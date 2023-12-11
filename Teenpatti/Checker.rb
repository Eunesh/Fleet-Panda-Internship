require_relative 'RandomNo'

class Checker
  def initialize(randomNumberGenerator)
    @random_no = randomNumberGenerator.Generator
  end

  def PointAllocator
    points = 0
    for var in @random_no
      if var == 1
        points += 20
      else
        points += var
      end
    end
  end
end


check = Checker.new(RandomNumberGenerator)

puts check.getRandomNumber();


# puts RandomNumberGenerator.Generator;
