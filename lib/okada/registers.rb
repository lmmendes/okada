module Okada
  module Registers
    # =====================================================
    # Timer registers
    # =====================================================
    # Counts up at a fixed 16384Hz; reset to 0 whenever written to
    DIVIDER_REGISTER_ADDRESS = 0xFF04

    # Counts up at the specified rate Triggers INT 0x50 when going 255->0
    COUNTER_REGISTER_ADDRESS = 0xFF05 # TIMA

    # When Counter overflows to 0, it's reset to start at Modulo
    MODULO_REGISTER_ADDRESS  = 0xFF06


    # | Bits | Function | Details
    # |------|----------|---------------------------
    # | 0-1  | Speed    | 00: 4096Hz
    # |      |          | 01: 262144Hz
    # |      |          | 10: 65536Hz
    # |      |          | 11: 16384Hz
    # |------|----------|---------------------------
    # |  2   | Running  | 1 to run timer, 0 to stop
    # |------|----------|----------------------------
    # | 3-7  |        Unused
    CONTROL_REGISTER_ADDRESS = 0xFF07 # TMC 0xFF07
  end
end
