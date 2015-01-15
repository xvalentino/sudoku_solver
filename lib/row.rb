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

  def eliminate_possibilities
    (1..9).each do |number|
      if contents.include?(number)
        contents.each do |element|
          if element.is_a?(Spot)
            element.possibilities.delete_at(element.possibilities.index(number))
          end
        end
      end
    end
  end

  def if_one_possibility_solve_it
    contents.each do |element|
      if element.is_a?(Spot) && element.possibilities.length == 1
        contents[contents.index(element)] = element.possibilities.first
      end
    end
  end

  def contains_a_spot?
    contents.any? {|element| element.is_a?(Spot)}
  end
end
