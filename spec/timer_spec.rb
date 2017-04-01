require "spec_helper"

describe Okada::Timer do
  subject{ Okada::Timer.new(@mmu) }
  before { @mmu = Okada::MMU.new }

  describe 'TIMA register' do
    context 'when TIMA is disabled' do
      before { subject.mmu.write_byte 0xFF07, 0b011 }
      it 'does not increment the counter register' do
        subject.tick(1024)
        expect(subject.mmu.read_byte(0xFF05)).to eq(0)
      end
    end

    context 'when tima is enabled' do
      before { subject.mmu.write_byte 0xFF07, 0b111 }
      it 'increments the counter register' do
        subject.tick(256)
        expect(subject.mmu.read_byte(0xFF05)).to be > 0
      end
    end

    context 'with modulo set' do
      before { subject.mmu.write_byte 0xFF07, 0b111 }
      before { subject.mmu.write_byte 0xFF06, 0x25 }
      before { subject.mmu.write_byte 0xFF05, 0xFF }
      it 'resets counter register to modulo value' do
        subject.tick(256)
        expect(subject.mmu.read_byte(0xFF05)).to eq 0x25
      end
    end
  end

  describe 'timer interrupt' do
    context 'when counter timer overflows' do
      before { subject.mmu.write_byte 0xFF07, 0b111 }
      before { subject.mmu.write_byte 0xFF05, 0xFF }
      it 'triggers timer interrupt' do
        expect(Okada::Interrupt).to receive(:trigger)
        subject.tick(256)
      end
    end
  end

  describe 'divider register' do
    it 'increments the divider register every 256 cycles' do
      subject.tick(256)
      expect(subject.mmu.read_byte(0xFF04)).to eq 1
    end

    context 'when DIV register is 255' do
      before { subject.mmu.write_byte 0xFF04, 0xFF, hw: true }
      it 'resets register to 0 on next increment' do
        subject.tick(256)
        expect(subject.mmu.read_byte(0xFF04)).to eq 0
      end
    end
  end
end
