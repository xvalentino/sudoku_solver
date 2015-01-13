require_relative 'spot'
require 'pry'

class Board
  attr_accessor :state
  attr_reader :row1, :row2

  def initialize
    blank_board
  end

  def blank_board
    make_9_9_board
  end

  def make_9_9_board
    @state = Array.new(9) {Array.new(9) {Spot.new}}
    name_rows
  end

  def intake_row_1(row)
    row = row.to_s.chars
    row.each_index do |index|
    @row1[index].data = row[index]
    end
  end

  def intake_row_2(row)
    row = row.to_s.chars
    row.each_index do |index|
      @row2[index].data = row[index]
    end
  end

  def name_rows
    @row1 = @state[0]
    @row2 = @state[1]
    @row3 = @state[2]
    @row4 = @state[3]
    @row5 = @state[4]
    @row6 = @state[5]
    @row7 = @state[6]
    @row8 = @state[7]
    @row9 = @state[8]
  end
end
