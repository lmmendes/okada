require "spec_helper"

describe Okada::MMU do
  subject{ Okada::MMU.new }
  describe '#write_byte' do
    context 'writting to 0xFFFFF' do
      it 'raise exception' do
        expect { subject.write_byte(0xfffff, 0x01) }.to raise_exception Okada::Exceptions::OutOfBoundsError
      end
    end

    context 'writting to -0x01' do
      it 'raises exception' do
        expect { subject.write_byte(-0x01, 0x01) }.to raise_exception Okada::Exceptions::OutOfBoundsError
      end
    end

    it 'writes one byte 0x01 to 0x8000' do
      subject.write_byte(0x8000, 0x01)
      expect(subject[0x8000]).to eq(0x01)
    end
  end

  describe '#read_byte' do
    context 'reading from 0xFFFFF' do
      it 'raises exception' do
        expect { subject.read_byte(0xfffff) }.to raise_exception Okada::Exceptions::OutOfBoundsError
      end
    end

    context 'reading from address -0x01' do
      it 'raises exception' do
        expect { subject.read_byte(-0x01) }.to raise_exception Okada::Exceptions::OutOfBoundsError
      end
    end
  end

  describe '#write_word' do
    it 'writes two bytes 0x3780 in 0x8040' do
      subject.write_word(0x8040, 0x3780)
      expect(subject[0x8040]).to eq(0x80)
      expect(subject[0x8041]).to eq(0x37)
    end
  end

  describe '#read_word' do
    it 'reads two bytes 0x8180 in 0x8080' do
      subject[0x8080] = 0x80
      subject[0x8081] = 0x81
      expect(subject.read_word(0x8080)).to eq(0x8180)
    end
  end

  describe 'Divider Register (0xFF04)' do
    it 'writing to 0xFF04 always retuns 0' do
      subject.write_byte(0xFF04, 0x80)
      expect(subject.read_byte(0xFF04)).to eq(0x00)
    end
  end

  describe 'Mirror of C000~DDFF' do
    it 'reading 0xE000-0xFDFF shaddow of C000-DDFF' do
      subject.write_byte(0xC000, 0x33)
      expect(subject.read_byte(0xE000)).to eq(0x33)
    end
  end
end
