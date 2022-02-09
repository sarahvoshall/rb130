class RomanNumeral
  attr_accessor :number 

  def initialize(number)
    @number = number
    @roman_numeral = String.new
  end

  def to_roman
    roman_numeral = ''

    until number < 1000
      roman_numeral += 'M'
      self.number -= 1000
    end

    until number < 500
      if number / 100 == 9
        roman_numeral += 'CM'
        self.number -= 900
      else
        roman_numeral += 'D'
        self.number -= 500
      end
    end

    until number < 100
      if number / 100 == 4
        roman_numeral += 'CD'
        self.number -= 400
      else
        roman_numeral += 'C'
        self.number -= 100
      end
    end

    until number < 50
      if number / 10 == 9
        roman_numeral += 'XC'
        self.number -= 90
      else
        roman_numeral += 'L'
        self.number -= 50
      end
    end

    until number < 10
      if number / 10 == 4
        roman_numeral += 'XL'
        self.number -= 40
      else 
        roman_numeral += 'X'
        self.number -= 10
      end
    end

    until number < 5
      if number == 9 
        roman_numeral += 'IX'
        self.number -= 9 
      else 
        roman_numeral += 'V'
        self.number -= 5
      end
    end

    until number < 1
      if number / 1 == 4
        roman_numeral += 'IV'
        self.number -= 4
      else 
        roman_numeral += 'I'
        self.number -= 1
      end
    end

    roman_numeral
  end
end

p RomanNumeral.new(1976).to_roman