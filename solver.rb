class Solver
    def self.factorial(n)
        raise ArgumentError, 'Input must be a non-negative integer' if n < 0
    
        result = 1
        (1..n).each { |i| result *= i }
        result
    end

    def self.reverse(word)
        word.reverse
    end

    def self.fizzbuzz(n)
      return 'fizzbuzz' if (n % 3).zero? && (n % 5).zero?
      return 'fizz' if (n % 3).zero?
      return 'buzz' if (n % 5).zero?
  
      n.to_s
    end
end
