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