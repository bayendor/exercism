class Integer
  def to_roman
    fail 'No notation for 0 or negative number' if self <= 0

    number = self
    numeral = ''

    thousands     = (number / 1000)
    fivehundreds  = (number % 1000 / 500)
    hundreds      = (number % 1000 / 100)
    fiftys        = (number % 100 / 50)
    tens          = (number % 100 / 10)
    fives         = (number % 10 / 5)
    ones          = (number % 10)

    numeral += ('M' * thousands)

    if hundreds == 9
      numeral += 'CM'
    elsif hundreds == 4
      numeral += 'CD'
    else
      numeral += ('D' * fivehundreds)
      numeral += 'C' * (number % 500 / 100)
    end

    if tens == 9
      numeral += 'XC'
    elsif tens == 4
      numeral += 'XL'
    else
      numeral += ('L' * fiftys)
      numeral += 'X' * (number % 50 / 10)
    end

    if ones == 9
      numeral += 'IX'
    elsif ones == 4
      numeral += 'IV'
    else
      numeral += ('V' * fives)
      numeral += 'I' * (number % 5 / 1)
    end

    numeral
  end
end
