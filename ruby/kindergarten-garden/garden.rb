class Garden
  attr_reader :garden

  def initialize(garden)
    @garden = garden
  end

  def alice

  end

  def plants
     { 'R'=> :radishes, 'C' => :clover, 'G' => :grass }
  end
end
