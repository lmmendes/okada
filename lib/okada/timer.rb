# http://www.codeslinger.co.uk/pages/projects/gameboy/timers.html
# https://realboyemulator.wordpress.com/2013/01/18/emulating-the-core-2/

module Okada
  class Timer
    #include Registers

    attr_reader :mmu

    CLOCK_SPEED = 4194304

    def initialize(mmu)
      @mmu = mmu
      @divider_cyles = 0
      @tima_cycles   = CLOCK_SPEED / frequency
    end

    def tick(cycles = 0)
      update_divider(cycles)
      if clock_enabled?
        @tima_cycles -= cycles
        if @tima_cycles <= 0
          @tima_cycles = frequency
        else
          if mmu.read_byte(0xFF05) == 0xFF
            mmu.write_byte 0xFF05, mmu.read_byte(0xFF06)
            # Okada::Interrupt.request(Interrupt::INTERRUPT_TIMER)
          else
            mmu.write_byte 0xFF05, mmu.read_byte(0xFF06) + 1
          end
        end
      end
    end

    def update_divider(cycles)
      @divider_cyles += cycles
      if @divider_cyles >= 0xFF
        @divider_cyles = 0
        mmu.write_byte 0xFF04, mmu.read_byte(0xFF04) + 1, hw: true
      end
    end

    def frequency
      case mmu.read_byte(0xFF07) & 0x3
      when 0
        1024 # freq 4096
      when 1
        16 # freq 262144
      when 2
        64 # freq 65536
      when 3
        256 # freq 16382
      end
    end

    def clock_enabled?
      mmu.read_byte(0xFF07) & 0x4 == 0x4
    end

  end
end
