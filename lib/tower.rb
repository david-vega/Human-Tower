require 'human'

class Tower
  attr_accessor :humans

  def initialize(options = [])
    @humans = []
    options.each do |element|
      @humans << Human.new(height: element[0], weight: element[1])
    end
  end
end
