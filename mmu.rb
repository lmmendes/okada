# The GameBoy contains an 8-bit processor, meaning it can access 8-bits
# of data at one time. To access this data, it has a 16-bit address bus,
# which can address 65,536 positions of memory.
# This address space is split into the following areas:
#
# $FFFF 	      Interrupt Enable Flag
# $FF80-$FFFE 	Zero Page - 127 bytes
# $FF00-$FF7F 	Hardware I/O Registers
# $FEA0-$FEFF 	Unusable Memory
# $FE00-$FE9F 	OAM - Object Attribute Memory
# $E000-$FDFF 	Echo RAM - Reserved, Do Not Use
# $D000-$DFFF 	Internal RAM - Bank 1-7 (switchable - CGB only)
# $C000-$CFFF 	Internal RAM - Bank 0 (fixed)
# $A000-$BFFF 	Cartridge RAM (If Available)
# $9C00-$9FFF 	BG Map Data 2
# $9800-$9BFF 	BG Map Data 1
# $8000-$97FF 	Character RAM
# $4000-$7FFF 	Cartridge ROM - Switchable Banks 1-xx
# $0150-$3FFF 	Cartridge ROM - Bank 0 (fixed)
# $0100-$014F 	Cartridge Header Area
# $0000-$00FF 	Restart and Interrupt Vectors
#
# For more information please read for more information:
# - http://gameboy.mongenel.com/dmg/asmmemmap.html
# - http://gbdev.gg8.se/wiki/articles/Memory_Map

class MMU
  # 65536 bytes
  MEMORY_SIZE = 2**16

  attr_reader :memory
  attr_accessor :cartridge
  attr_accessor :input

  def initializer
    @memory = Array.new MEMORY_SIZE, 0
  end

  def [](i)
    raise MemoryOutOfBounds, "#{i}" if i >= MEMORY_SIZE || i < 0
    case i
    when 0x000..0x3FFF # 16KB ROM bank 00 (From cartridge, fixed bank )
      cartridge[i]
    when 0x4000..0x7FFF # 16KB ROM Bank 01~NN (From cartridge, switchable bank via MBC)
      cartridge[i]
    when 0x8000..0x9FFF # 8KB Video RAM (VRAM)
      memory[i]
    when 0xA000..0xBFFF # 8KB External RAM (In cartridge, switchable bank if any)
      cartridge[i]
    when 0xC000..0xCFFF # 4KB Work RAM (WRAM) bank 0
      memory[i]
    when D000..0xDFFF # 4KB Work RAM bank 1~N (Switchable bank 1~7 in CGB mode)
      memory[i]
    when 0xE000..0xFDFF # Mirror of C000~DDFF (ECHO) (Typically not used)
      memory[i - 0x2000] # mirror 0xC000 - 0xE000 = 0x2000
    when 0xFE00..0xFE9F # Sprite attribute table (OAM)
      memory[i]
    when 0xFF00..0xFF7F # I/O Registers
      # 0xFF00 - Register for reading joy pad info and determining system type
      #           P14        P15
      #            |          |
      #  P10-------O-Right----O-A
      #            |          |
      #  P11-------O-Left-----O-B
      #            |          |
      #  P12-------O-Up-------O-Select
      #            |          |
      #  P13-------O-Down-----O-Start
      #            |          |
      if i == 0xFF00
        input.read
      else
        0xFF
      end
    when 0xFF80..0xFFFE # High RAM (HRAM)
      memory[i]
    when 0xFFFF # Interrupts Enable Register
      memory[i]
    else
      raise MemoryOutOfBounds, "Memory address #{i} not implemented"
    end
  end

  def [](i, v)
    raise MemoryOutOfBounds, "#{i}" if i >= MEMORY_SIZE || i < 0
    case i
    when 0xFF00
      memory[i] = v | 0xF
    when 0xFF46 # Direct Memory Access (DMA)
      dma_transfer(v)
      memory[i] = v
    when 0xFF04 # Divider Register, incremented 16384 (~16779 on SGB) times a second. Writing any value sets it to $00
      memory[i] = 0
    when 0x000..0x3FFF # 16KB ROM bank 00 (From cartridge, fixed bank )
      cartridge[i] = v
    when 0x4000..0x7FFF # 16KB ROM Bank 01~NN (From cartridge, switchable bank via MBC)
      cartridge[i] = v
    when 0x8000..0x9FFF # 8KB Video RAM (VRAM)
      memory[i] = v
    when 0xA000..0xBFFF # 8KB External RAM (In cartridge, switchable bank if any)
      cartridge[i] = v
    when 0xC000..0xCFFF # 4KB Work RAM (WRAM) bank 0
      memory[i] = v
    when D000..0xDFFF # 4KB Work RAM bank 1~N (Switchable bank 1~7 in CGB mode)
      memory[i] = v
    when 0xE000..0xFDFF # Mirror of C000~DDFF (ECHO) (Typically not used)
      memory[i - 0x2000] = v
    when 0xFE00..0xFE9F # Sprite attribute table (OAM)
      memory[i] = v
    else
      raise MemoryOutOfBounds, "Memory address #{i}=#{v} not implemented"
    end
  end

  alias_method :read_byte, :[]
  alias_method :write_byte, :[]=

  def read_word(addr)
    self[addr] | (self[addr + 1] << 8)
  end

  def write_word(addr, word)
    write_byte addr, (word & 0xFF)
    write_byte addr + 1, (word >> 8)
  end

  private

  # Direct Memory Access
  # The Direct Memory Access (DMA) is a way of copying data to the sprite RAM
  # at the appropriate time removing all responsibility from the main program.
  #
  # The code behind the DMA transfer is really very simple but to understand
  # what is needed can be a little tricky. As mentioned earlier the
  # destination address of the DMA is the sprite RAM between memory adddress
  # (0xFE00-0xFE9F) which means that a total of 0xA0 bytes will be copied to
  # this region. The source address is represented by the data being written
  # to address 0xFF46 except this value is the source address divided by 100.
  # So to get the correct start address it is the data being written to * 100
  # (to make it faster instead of multiplying by 100 we will shift left
  # 8 places, it is the same thing).
  #
  # http://www.codeslinger.co.uk/pages/projects/gameboy/dma.html
  #
  def dma_transfer(byte)
    addr = byte << 8
    while i < 0xA0 do
      write_byte 0xFE00 + i, read_byte(addr + i)
      i += 1
    end
  end
end
