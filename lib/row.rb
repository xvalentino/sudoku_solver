require_relative 'board'
require_relative 'spot'
require 'pry'

class Row
  attr_reader :contents

  def initialize(state)
    @contents = state
  end

  def solve
    eliminate_possibilities
    if_one_possibility_solve_it
  end

  def find_spots
    eliminated = contents.inject[] do |_, element|
      if element.is_a?(Spot)
        contents.index(element)
      end
    end
    binding.pry
  end

  def eliminate_possibilities
    (1..9).each do |index|
      if contents.include?(index)
        contents[0].possibilities.delete(index)
      end
    end
  end

  def if_one_possibility_solve_it
    if contents[0].possibilities.length == 1
      contents[0] = contents[0].possibilities.first
    end
  end
end
