# year: exercism leap year tester

class Year
  attr_accessor :year

  def initialize(year)
    self.year = year
  end

  def leap?
    if year % 400 == 0
      true
    elsif year % 100 == 0 && year % 4 == 0
      false
    elsif year % 4 == 0
      true
    else
      false
    end
  end
end
