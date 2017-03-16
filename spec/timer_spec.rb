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
  end

end
