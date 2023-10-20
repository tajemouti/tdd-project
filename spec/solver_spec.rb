require './solver'

describe Solver do
  describe '#factorial' do
    it 'returns 1 for input 0' do
      expect(Solver.factorial(0)).to eq(1)
    end

    it 'returns the correct factorial for positive integers' do
      expect(Solver.factorial(5)).to eq(120)
      expect(Solver.factorial(10)).to eq(3_628_800)
    end

    it 'raises an exception for negative integers' do
      expect { Solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it 'returns the reversed word' do
      expect(Solver.reverse('hello')).to eq('olleh')
      expect(Solver.reverse('world')).to eq('dlrow')
    end
  end

  describe '#fizzbuzz' do
    it 'returns "fizz" when N is divisible by 3' do
      expect(Solver.fizzbuzz(3)).to eq('fizz')
      expect(Solver.fizzbuzz(6)).to eq('fizz')
    end

    it 'returns "buzz" when N is divisible by 5' do
      expect(Solver.fizzbuzz(5)).to eq('buzz')
      expect(Solver.fizzbuzz(10)).to eq('buzz')
    end

    it 'returns "fizzbuzz" when N is divisible by both 3 and 5' do
      expect(Solver.fizzbuzz(15)).to eq('fizzbuzz')
      expect(Solver.fizzbuzz(30)).to eq('fizzbuzz')
    end

    it 'returns N as a string for other cases' do
      expect(Solver.fizzbuzz(7)).to eq('7')
      expect(Solver.fizzbuzz(11)).to eq('11')
    end
  end
end
