require_relative 'spot'
require 'pry'

class Board
  attr_accessor :state
  attr_reader :row1, :row2

  def initialize
    blank_board
    @row1 = row(1)
    @row2 = row(2)
  end

  def blank_board
    make_9_9_board
  end

  def make_9_9_board
    @state = Array.new(9) {Array.new(9) {Spot.new}}
  end

  def intake_row(row_number, numbers)
    numbers = numbers.to_s.chars
    numbers.each_index do |index|
      row(row_number)[index].data = numbers[index]
    end
  end

  def row(num)
    @state[num - 1]
  end
end
