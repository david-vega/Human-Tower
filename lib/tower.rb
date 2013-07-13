require 'human'

class Tower
  attr_accessor :humans

  def initialize(options = [])
    @humans = []
    options.each do |element|
      @humans << Human.new(height: element[0], weight: element[1])
    end
  end

  def longest_tower
    [[56, 90],
     [60, 95],
     [65, 100],
     [68, 110],
     [70, 150],
     [75, 190]]
  end
end
