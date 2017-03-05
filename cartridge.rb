# http://problemkaputt.de/pandocs.htm#thecartridgeheader
# http://gbdev.gg8.se/wiki/articles/The_Cartridge_Header
class Cartridge
  CARTRIGE_TYPE_MEMORY_LOCATION = 0x0147
  
  attr_reader :rom, :type, :mbc

  def initialize(rom)
    @rom = rom.is_a?(Array) ? rom : File.binread(rom).bytes
    @type = @rom[CARTRIGE_TYPE_MEMORY_LOCATION]
    @mbc = cartridge_controller(@type, @rom)
  end

  def [](i)
    mbc[i]
  end

  def []=(i, v)
    mbc[i] = v
  end

  def title
    rom[0x134..0x143].pack('c*')
  end

  def nintendo_logo
    rom[0x0104..0x0133]
  end

  def manufactor_code
    rom[0x013F..0x0142]
  end

  def checksum
    rom[0x14d]
  end

  def to_s
    "<Cartridge title=#{title} type=#{type} checksum=#{checksum}>"
  end

  private
  def cartridge_controller(type, rom)
    case type
    when 0x00, 0x8, 0x9
      MBC::ROM.new(rom)
    else
      raise UnsupportedCartridgeType, "Cartridge type=#{type} not supported."
    end
  end
end


# GameBoy Memory Map
# http://gameboy.mongenel.com/dmg/asmmemmap.html
module MBC
  class ROM
    CARTRIGE_RAM_SIZE = 0x1FFF
    CARTRIGE_RAM_START_OFFSET = 0xA000
    CARTRIGE_RAM_END_OFFSET = CARTRIGE_RAM_START_OFFSET + CARTRIGE_RAM_SIZE

    attr_reader :ram

    def initialize(program)
      @ram = Array.new(CARTRIGE_RAM_SIZE, 0)
      @program = program
    end

    def [](i)
      case i
      when 0xA000..0xBFFF
        @ram[i - 0xA000]
      else
        @program[i]
      end
    end

    def []=(i, v)
      case i
      when 0xA000..0xBFFF
        @ram[i] = v
      else
        raise MemoryOutOfBounds, "Can't write to #{i}=#{v}"
      end
    end

  end
end
