module Okada
  module LR35902
    module Instructions
      # LD BC,d16
      # flags: - - - -
      def ld_bc_d16
      end

      # LD (BC),A
      # flags: - - - -
      def ld_bc_a
      end

      # INC BC
      # flags: - - - -
      def inc_bc
      end

      # INC B
      # flags: Z 0 H -
      def inc_b
      end

      # DEC B
      # flags: Z 1 H -
      def dec_b
      end

      # LD B,d8
      # flags: - - - -
      def ld_b_d8
      end

      # RLCA
      # flags: 0 0 0 C
      def rlca
      end

      # LD (a16),SP
      # flags: - - - -
      def ld_a16_sp
      end

      # ADD HL,BC
      # flags: - 0 H C
      def add_hl_bc
      end

      # LD A,(BC)
      # flags: - - - -
      def ld_a_bc
      end

      # DEC BC
      # flags: - - - -
      def dec_bc
      end

      # INC C
      # flags: Z 0 H -
      def inc_c
      end

      # DEC C
      # flags: Z 1 H -
      def dec_c
      end

      # LD C,d8
      # flags: - - - -
      def ld_c_d8
      end

      # RRCA
      # flags: 0 0 0 C
      def rrca
      end

      # STOP 0
      # flags: - - - -
      def stop_0
      end

      # LD DE,d16
      # flags: - - - -
      def ld_de_d16
      end

      # LD (DE),A
      # flags: - - - -
      def ld_de_a
      end

      # INC DE
      # flags: - - - -
      def inc_de
      end

      # INC D
      # flags: Z 0 H -
      def inc_d
      end

      # DEC D
      # flags: Z 1 H -
      def dec_d
      end

      # LD D,d8
      # flags: - - - -
      def ld_d_d8
      end

      # RLA
      # flags: 0 0 0 C
      def rla
      end

      # JR r8
      # flags: - - - -
      def jr_r8
      end

      # ADD HL,DE
      # flags: - 0 H C
      def add_hl_de
      end

      # LD A,(DE)
      # flags: - - - -
      def ld_a_de
      end

      # DEC DE
      # flags: - - - -
      def dec_de
      end

      # INC E
      # flags: Z 0 H -
      def inc_e
      end

      # DEC E
      # flags: Z 1 H -
      def dec_e
      end

      # LD E,d8
      # flags: - - - -
      def ld_e_d8
      end

      # RRA
      # flags: 0 0 0 C
      def rra
      end

      # JR NZ,r8
      # flags: - - - -
      def jr_nz_r8
      end

      # LD HL,d16
      # flags: - - - -
      def ld_hl_d16
      end

      # LD (HL+),A
      # flags: - - - -
      def ld_hl_plus_a
      end

      # INC HL
      # flags: - - - -
      def inc_hl
      end

      # INC H
      # flags: Z 0 H -
      def inc_h
      end

      # DEC H
      # flags: Z 1 H -
      def dec_h
      end

      # LD H,d8
      # flags: - - - -
      def ld_h_d8
      end

      # DAA
      # flags: Z - 0 C
      def daa
      end

      # JR Z,r8
      # flags: - - - -
      def jr_z_r8
      end

      # ADD HL,HL
      # flags: - 0 H C
      def add_hl_hl
      end

      # LD A,(HL+)
      # flags: - - - -
      def ld_a_hl_plus
      end

      # DEC HL
      # flags: - - - -
      def dec_hl
      end

      # INC L
      # flags: Z 0 H -
      def inc_l
      end

      # DEC L
      # flags: Z 1 H -
      def dec_l
      end

      # LD L,d8
      # flags: - - - -
      def ld_l_d8
      end

      # CPL
      # flags: - 1 1 -
      def cpl
      end

      # JR NC,r8
      # flags: - - - -
      def jr_nc_r8
      end

      # LD SP,d16
      # flags: - - - -
      def ld_sp_d16
      end

      # LD (HL-),A
      # flags: - - - -
      def ld_hl_minus_a
      end

      # INC SP
      # flags: - - - -
      def inc_sp
      end

      # INC (HL)
      # flags: Z 0 H -
      def inc_hl
      end

      # DEC (HL)
      # flags: Z 1 H -
      def dec_hl
      end

      # LD (HL),d8
      # flags: - - - -
      def ld_hl_d8
      end

      # SCF
      # flags: - 0 0 1
      def scf
      end

      # JR C,r8
      # flags: - - - -
      def jr_c_r8
      end

      # ADD HL,SP
      # flags: - 0 H C
      def add_hl_sp
      end

      # LD A,(HL-)
      # flags: - - - -
      def ld_a_hl_minus
      end

      # DEC SP
      # flags: - - - -
      def dec_sp
      end

      # INC A
      # flags: Z 0 H -
      def inc_a
      end

      # DEC A
      # flags: Z 1 H -
      def dec_a
      end

      # LD A,d8
      # flags: - - - -
      def ld_a_d8
      end

      # CCF
      # flags: - 0 0 C
      def ccf
      end

      # LD B,B
      # flags: - - - -
      def ld_b_b
      end

      # LD B,C
      # flags: - - - -
      def ld_b_c
      end

      # LD B,D
      # flags: - - - -
      def ld_b_d
      end

      # LD B,E
      # flags: - - - -
      def ld_b_e
      end

      # LD B,H
      # flags: - - - -
      def ld_b_h
      end

      # LD B,L
      # flags: - - - -
      def ld_b_l
      end

      # LD B,(HL)
      # flags: - - - -
      def ld_b_hl
      end

      # LD B,A
      # flags: - - - -
      def ld_b_a
      end

      # LD C,B
      # flags: - - - -
      def ld_c_b
      end

      # LD C,C
      # flags: - - - -
      def ld_c_c
      end

      # LD C,D
      # flags: - - - -
      def ld_c_d
      end

      # LD C,E
      # flags: - - - -
      def ld_c_e
      end

      # LD C,H
      # flags: - - - -
      def ld_c_h
      end

      # LD C,L
      # flags: - - - -
      def ld_c_l
      end

      # LD C,(HL)
      # flags: - - - -
      def ld_c_hl
      end

      # LD C,A
      # flags: - - - -
      def ld_c_a
      end

      # LD D,B
      # flags: - - - -
      def ld_d_b
      end

      # LD D,C
      # flags: - - - -
      def ld_d_c
      end

      # LD D,D
      # flags: - - - -
      def ld_d_d
      end

      # LD D,E
      # flags: - - - -
      def ld_d_e
      end

      # LD D,H
      # flags: - - - -
      def ld_d_h
      end

      # LD D,L
      # flags: - - - -
      def ld_d_l
      end

      # LD D,(HL)
      # flags: - - - -
      def ld_d_hl
      end

      # LD D,A
      # flags: - - - -
      def ld_d_a
      end

      # LD E,B
      # flags: - - - -
      def ld_e_b
      end

      # LD E,C
      # flags: - - - -
      def ld_e_c
      end

      # LD E,D
      # flags: - - - -
      def ld_e_d
      end

      # LD E,E
      # flags: - - - -
      def ld_e_e
      end

      # LD E,H
      # flags: - - - -
      def ld_e_h
      end

      # LD E,L
      # flags: - - - -
      def ld_e_l
      end

      # LD E,(HL)
      # flags: - - - -
      def ld_e_hl
      end

      # LD E,A
      # flags: - - - -
      def ld_e_a
      end

      # LD H,B
      # flags: - - - -
      def ld_h_b
      end

      # LD H,C
      # flags: - - - -
      def ld_h_c
      end

      # LD H,D
      # flags: - - - -
      def ld_h_d
      end

      # LD H,E
      # flags: - - - -
      def ld_h_e
      end

      # LD H,H
      # flags: - - - -
      def ld_h_h
      end

      # LD H,L
      # flags: - - - -
      def ld_h_l
      end

      # LD H,(HL)
      # flags: - - - -
      def ld_h_hl
      end

      # LD H,A
      # flags: - - - -
      def ld_h_a
      end

      # LD L,B
      # flags: - - - -
      def ld_l_b
      end

      # LD L,C
      # flags: - - - -
      def ld_l_c
      end

      # LD L,D
      # flags: - - - -
      def ld_l_d
      end

      # LD L,E
      # flags: - - - -
      def ld_l_e
      end

      # LD L,H
      # flags: - - - -
      def ld_l_h
      end

      # LD L,L
      # flags: - - - -
      def ld_l_l
      end

      # LD L,(HL)
      # flags: - - - -
      def ld_l_hl
      end

      # LD L,A
      # flags: - - - -
      def ld_l_a
      end

      # LD (HL),B
      # flags: - - - -
      def ld_hl_b
      end

      # LD (HL),C
      # flags: - - - -
      def ld_hl_c
      end

      # LD (HL),D
      # flags: - - - -
      def ld_hl_d
      end

      # LD (HL),E
      # flags: - - - -
      def ld_hl_e
      end

      # LD (HL),H
      # flags: - - - -
      def ld_hl_h
      end

      # LD (HL),L
      # flags: - - - -
      def ld_hl_l
      end

      # HALT
      # flags: - - - -
      def halt
      end

      # LD (HL),A
      # flags: - - - -
      def ld_hl_a
      end

      # LD A,B
      # flags: - - - -
      def ld_a_b
      end

      # LD A,C
      # flags: - - - -
      def ld_a_c
      end

      # LD A,D
      # flags: - - - -
      def ld_a_d
      end

      # LD A,E
      # flags: - - - -
      def ld_a_e
      end

      # LD A,H
      # flags: - - - -
      def ld_a_h
      end

      # LD A,L
      # flags: - - - -
      def ld_a_l
      end

      # LD A,(HL)
      # flags: - - - -
      def ld_a_hl
      end

      # LD A,A
      # flags: - - - -
      def ld_a_a
      end

      # ADD A,B
      # flags: Z 0 H C
      def add_a_b
      end

      # ADD A,C
      # flags: Z 0 H C
      def add_a_c
      end

      # ADD A,D
      # flags: Z 0 H C
      def add_a_d
      end

      # ADD A,E
      # flags: Z 0 H C
      def add_a_e
      end

      # ADD A,H
      # flags: Z 0 H C
      def add_a_h
      end

      # ADD A,L
      # flags: Z 0 H C
      def add_a_l
      end

      # ADD A,(HL)
      # flags: Z 0 H C
      def add_a_hl
      end

      # ADD A,A
      # flags: Z 0 H C
      def add_a_a
      end

      # ADC A,B
      # flags: Z 0 H C
      def adc_a_b
      end

      # ADC A,C
      # flags: Z 0 H C
      def adc_a_c
      end

      # ADC A,D
      # flags: Z 0 H C
      def adc_a_d
      end

      # ADC A,E
      # flags: Z 0 H C
      def adc_a_e
      end

      # ADC A,H
      # flags: Z 0 H C
      def adc_a_h
      end

      # ADC A,L
      # flags: Z 0 H C
      def adc_a_l
      end

      # ADC A,(HL)
      # flags: Z 0 H C
      def adc_a_hl
      end

      # ADC A,A
      # flags: Z 0 H C
      def adc_a_a
      end

      # SUB B
      # flags: Z 1 H C
      def sub_b
      end

      # SUB C
      # flags: Z 1 H C
      def sub_c
      end

      # SUB D
      # flags: Z 1 H C
      def sub_d
      end

      # SUB E
      # flags: Z 1 H C
      def sub_e
      end

      # SUB H
      # flags: Z 1 H C
      def sub_h
      end

      # SUB L
      # flags: Z 1 H C
      def sub_l
      end

      # SUB (HL)
      # flags: Z 1 H C
      def sub_hl
      end

      # SUB A
      # flags: Z 1 H C
      def sub_a
      end

      # SBC A,B
      # flags: Z 1 H C
      def sbc_a_b
      end

      # SBC A,C
      # flags: Z 1 H C
      def sbc_a_c
      end

      # SBC A,D
      # flags: Z 1 H C
      def sbc_a_d
      end

      # SBC A,E
      # flags: Z 1 H C
      def sbc_a_e
      end

      # SBC A,H
      # flags: Z 1 H C
      def sbc_a_h
      end

      # SBC A,L
      # flags: Z 1 H C
      def sbc_a_l
      end

      # SBC A,(HL)
      # flags: Z 1 H C
      def sbc_a_hl
      end

      # SBC A,A
      # flags: Z 1 H C
      def sbc_a_a
      end

      # AND B
      # flags: Z 0 1 0
      def and_b
      end

      # AND C
      # flags: Z 0 1 0
      def and_c
      end

      # AND D
      # flags: Z 0 1 0
      def and_d
      end

      # AND E
      # flags: Z 0 1 0
      def and_e
      end

      # AND H
      # flags: Z 0 1 0
      def and_h
      end

      # AND L
      # flags: Z 0 1 0
      def and_l
      end

      # AND (HL)
      # flags: Z 0 1 0
      def and_hl
      end

      # AND A
      # flags: Z 0 1 0
      def and_a
      end

      # XOR B
      # flags: Z 0 0 0
      def xor_b
      end

      # XOR C
      # flags: Z 0 0 0
      def xor_c
      end

      # XOR D
      # flags: Z 0 0 0
      def xor_d
      end

      # XOR E
      # flags: Z 0 0 0
      def xor_e
      end

      # XOR H
      # flags: Z 0 0 0
      def xor_h
      end

      # XOR L
      # flags: Z 0 0 0
      def xor_l
      end

      # XOR (HL)
      # flags: Z 0 0 0
      def xor_hl
      end

      # XOR A
      # flags: Z 0 0 0
      def xor_a
      end

      # OR B
      # flags: Z 0 0 0
      def or_b
      end

      # OR C
      # flags: Z 0 0 0
      def or_c
      end

      # OR D
      # flags: Z 0 0 0
      def or_d
      end

      # OR E
      # flags: Z 0 0 0
      def or_e
      end

      # OR H
      # flags: Z 0 0 0
      def or_h
      end

      # OR L
      # flags: Z 0 0 0
      def or_l
      end

      # OR (HL)
      # flags: Z 0 0 0
      def or_hl
      end

      # OR A
      # flags: Z 0 0 0
      def or_a
      end

      # CP B
      # flags: Z 1 H C
      def cp_b
      end

      # CP C
      # flags: Z 1 H C
      def cp_c
      end

      # CP D
      # flags: Z 1 H C
      def cp_d
      end

      # CP E
      # flags: Z 1 H C
      def cp_e
      end

      # CP H
      # flags: Z 1 H C
      def cp_h
      end

      # CP L
      # flags: Z 1 H C
      def cp_l
      end

      # CP (HL)
      # flags: Z 1 H C
      def cp_hl
      end

      # CP A
      # flags: Z 1 H C
      def cp_a
      end

      # RET NZ
      # flags: - - - -
      def ret_nz
      end

      # POP BC
      # flags: - - - -
      def pop_bc
      end

      # JP NZ,a16
      # flags: - - - -
      def jp_nz_a16
      end

      # JP a16
      # flags: - - - -
      def jp_a16
      end

      # CALL NZ,a16
      # flags: - - - -
      def call_nz_a16
      end

      # PUSH BC
      # flags: - - - -
      def push_bc
      end

      # ADD A,d8
      # flags: Z 0 H C
      def add_a_d8
      end

      # RST 00H
      # flags: - - - -
      def rst_00h
      end

      # RET Z
      # flags: - - - -
      def ret_z
      end

      # RET
      # flags: - - - -
      def ret
      end

      # JP Z,a16
      # flags: - - - -
      def jp_z_a16
      end

      # PREFIX CB
      # flags: - - - -
      def prefix_cb
      end

      # CALL Z,a16
      # flags: - - - -
      def call_z_a16
      end

      # CALL a16
      # flags: - - - -
      def call_a16
      end

      # ADC A,d8
      # flags: Z 0 H C
      def adc_a_d8
      end

      # RST 08H
      # flags: - - - -
      def rst_08h
      end

      # RET NC
      # flags: - - - -
      def ret_nc
      end

      # POP DE
      # flags: - - - -
      def pop_de
      end

      # JP NC,a16
      # flags: - - - -
      def jp_nc_a16
      end

      # CALL NC,a16
      # flags: - - - -
      def call_nc_a16
      end

      # PUSH DE
      # flags: - - - -
      def push_de
      end

      # SUB d8
      # flags: Z 1 H C
      def sub_d8
      end

      # RST 10H
      # flags: - - - -
      def rst_10h
      end

      # RET C
      # flags: - - - -
      def ret_c
      end

      # RETI
      # flags: - - - -
      def reti
      end

      # JP C,a16
      # flags: - - - -
      def jp_c_a16
      end

      # CALL C,a16
      # flags: - - - -
      def call_c_a16
      end

      # SBC A,d8
      # flags: Z 1 H C
      def sbc_a_d8
      end

      # RST 18H
      # flags: - - - -
      def rst_18h
      end

      # LDH (a8),A
      # flags: - - - -
      def ldh_a8_a
      end

      # POP HL
      # flags: - - - -
      def pop_hl
      end

      # LD (C),A
      # flags: - - - -
      def ld_c_a
      end

      # PUSH HL
      # flags: - - - -
      def push_hl
      end

      # AND d8
      # flags: Z 0 1 0
      def and_d8
      end

      # RST 20H
      # flags: - - - -
      def rst_20h
      end

      # ADD SP,r8
      # flags: 0 0 H C
      def add_sp_r8
      end

      # JP (HL)
      # flags: - - - -
      def jp_hl
      end

      # LD (a16),A
      # flags: - - - -
      def ld_a16_a
      end

      # XOR d8
      # flags: Z 0 0 0
      def xor_d8
      end

      # RST 28H
      # flags: - - - -
      def rst_28h
      end

      # LDH A,(a8)
      # flags: - - - -
      def ldh_a_a8
      end

      # POP AF
      # flags: Z N H C
      def pop_af
      end

      # LD A,(C)
      # flags: - - - -
      def ld_a_c
      end

      # DI
      # flags: - - - -
      def di
      end

      # PUSH AF
      # flags: - - - -
      def push_af
      end

      # OR d8
      # flags: Z 0 0 0
      def or_d8
      end

      # RST 30H
      # flags: - - - -
      def rst_30h
      end

      # LD HL,SP+r8
      # flags: 0 0 H C
      def ld_hl_sp_plusr8
      end

      # LD SP,HL
      # flags: - - - -
      def ld_sp_hl
      end

      # LD A,(a16)
      # flags: - - - -
      def ld_a_a16
      end

      # EI
      # flags: - - - -
      def ei
      end

      # CP d8
      # flags: Z 1 H C
      def cp_d8
      end

      # RST 38H
      # flags: - - - -
      def rst_38h
      end
    end
  end
end
