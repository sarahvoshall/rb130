class PerfectNumber
  def self.classify(number)
    valid?(number)

    sum_of_divisors = return_divisors(number).sum

    determine_class(sum_of_divisors, number)
  end

  class << self 
    def valid?(number)
      raise StandardError.new if number < 1
    end

    def return_divisors(number)
      (1...number).to_a.select do |num|
        number % num == 0
      end
    end

    def determine_class(sum_of_divisors, number)
      case 
      when sum_of_divisors == number then 'perfect'
      when sum_of_divisors > number then 'abundant'
      when sum_of_divisors < number then 'deficient'
      end
    end
  end
end
