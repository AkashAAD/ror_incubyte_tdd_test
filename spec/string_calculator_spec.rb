require 'string_calculator'

RSpec.describe StringCalculator do
  let(:string_calculator) { StringCalculator.new }

  describe '#add' do
    context 'when input string is empty' do
      it 'returns 0' do
        expect(string_calculator.add('')).to eq 0
      end
    end

    context 'when input string have only one number' do
      it 'returns the given number' do
        expect(string_calculator.add('1')).to eq 1
      end
    end

    context 'when input string have more than one number separated by a comma' do
      it 'returns the sum of given numbers' do
        expect(string_calculator.add('1,5')).to eq 6
      end
    end
  end
end
