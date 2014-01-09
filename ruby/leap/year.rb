# year: exercism leap year tester

class Year
  attr_accessor :year

  def initialize(year)
    self.year = year
  end

  def leap?
    year % 4 == 0 && year % 400 == 0
  end
end
