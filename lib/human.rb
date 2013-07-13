class Human
  attr_accessor :height
  attr_accessor :weight

  def initialize(options = {})
    @height = options[:height]
    @weight  = options[:weight]
  end
end
