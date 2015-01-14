require_relative 'spot'
require 'pry'

class Board
  attr_accessor :state

  def initialize
    blank_board
  end

  def blank_board
    make_9_9_board
  end

  def make_9_9_board
    @state = Array.new(9) {Array.new(9) {Spot.new}}
  end

  def row(num)
    @state[num - 1]
  end

  def intake(text)
    array_of_numbers = split_at_new_lines(text)
    intake_each_row(array_of_numbers)
  end

  def solve_using_rows
    
  end

  def split_at_new_lines(text)
    return text.split("\n")
  end

  def intake_each_row(array_of_numbers)
    array_of_numbers.each_with_index do |row, index|
      intake_row(index + 1, row)
    end
  end

  def intake_row(row_number, numbers)
    numbers = numbers.chars
    numbers.each_with_index do |number, index|
      if number != '0'
        row(row_number)[index] = number.to_i
      end
    end
  end

end
