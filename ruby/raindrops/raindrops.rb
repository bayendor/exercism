class Raindrops
  require 'prime'

  attr_accessor :number

  def self.convert(number)
    factors = number.prime_division
    factors = factors.flatten!
    string = ''

    if factors.nil?
      number.to_s
    elsif factors.include?(3)
      string += 'Pling'
    elsif factors.include?(5)
      string += 'Plang'
    elsif factors.include?(7)
      string += 'Plong'
    else
      number.to_s
    end
  end
end
