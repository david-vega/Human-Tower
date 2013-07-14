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
    sort_by_height
    remove_weight
  end

  def remove_weight
    #good discussion about this algorithm on http://stackoverflow.com/questions/17636424/remove-if-the-next-element-is-smaller
    @humans.each_index.map { |i| @humans[i] if i < 1 || @humans[i-1].weight < @humans[i].weight }.compact
  end

  def sort_by_height
    @humans.sort_by! {|human| human.height}
  end
end
