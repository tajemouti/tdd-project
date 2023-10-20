class Solver
  def self.factorial(num)
    raise ArgumentError, 'Input must be a non-negative integer' if num.negative?

    result = 1
    (1..num).each { |i| result *= i }
    result
  end

  def self.reverse(word)
    word.reverse
  end

  def self.fizzbuzz(num)
    return 'fizzbuzz' if (num % 3).zero? && (num % 5).zero?
    return 'fizz' if (num % 3).zero?
    return 'buzz' if (num % 5).zero?

    num.to_s
  end
end
