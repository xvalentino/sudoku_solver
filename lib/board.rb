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

  def intake_row(row_number, numbers)
    numbers = numbers.chars
    numbers.each_with_index do |number, index|
      if number != '0'
      row(row_number)[index] = number.to_i
      end
    end
  end

  def row(num)
    @state[num - 1]
  end

  def intake_all_rows(number)
    number.split("\n")
  end
end
