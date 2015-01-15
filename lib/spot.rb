class Spot
  attr_accessor :possibilities
  def initialize
    @possibilities = (1..9).to_a
  end
end
