require_relative 'year'

2014.upto 2114 do |year|
  if Year.new(year).leap?
    puts year
  end
end
