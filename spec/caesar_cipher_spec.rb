require_relative "../caesar_cipher"

describe '#verify_string' do
  context 'when given a string' do
    it 'returns an array of letters made from the original string' do
      expect(verify_string('What a string!')).to eq(["W", "h", "a", "t", " ", "a", " ", "s", "t", "r", "i", "n", "g", "!"])
    end
  end

  context 'when not given a string' do
    it 'returns nil' do
      expect(verify_string(1234)).to be_nil
    end
  end
end

describe '#normalize_shift_factor' do
  context 'when the shift factor is less than 26' do
    it 'returns the same shift factor' do
      expect(normalize_shift_factor(15)).to eq (15)
    end
  end
  
  context 'when the shift is equal to 26' do
    it 'returns the a shift factor of 26' do
      expect(normalize_shift_factor(26)).to eq(26)
    end
  end
  
  context 'when the shift factor is more than 26' do
    it 'returns a normalized shift factor' do
      expect(normalize_shift_factor(100)).to eq(22)
    end
  end
end