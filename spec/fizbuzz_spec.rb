require_relative './spec_helper.rb'
require_relative '../fizbuzz.rb'
require_relative '../result_logger.rb'

describe '#fizbuzz' do
  let(:result) { double(:result, success: true) }

  before do
    allow(ResultLogger).to receive(:call).and_return(result)
  end

  context 'when number is divisible by 3 and by 5' do
    it 'returns FizBuzz' do
      res = fizbuzz(15)

      expect(res).to eq('FizBuzz')
    end
  end

  context 'when number is divisible by 3 but not by 5' do
    it 'returns "Fiz"' do
      res = fizbuzz(6)

      expect(res).to eq('Fiz')
    end
  end

  context 'when number is divisible by 5 but not by 3' do
    it 'returns "Buzz"' do
      res = fizbuzz(10)

      expect(res).to eq('Buzz')
    end
  end

  context 'when number is not divisible neither by 3 nor by 5' do
    it 'returns nil' do
      res = fizbuzz(13)

      expect(res).to be_nil
    end
  end

  context 'with ResultLogger' do
    it 'executes method ":call"' do
      fizbuzz(123)

      expect(ResultLogger).to have_received(:call)
    end
  end
end
