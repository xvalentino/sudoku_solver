require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/row'
require_relative '../lib/board'
require 'pry'

class RowTest < Minitest::Test
  attr_reader :board, :row, :puzzle

  def setup
    @board = Board.new
  end

  def test_rows_are_set
    puzzle = File.read("./lib/board_1.txt")
    @board.intake(puzzle)
    row = Row.new(@board.row(1))
    assert_equal board.row(1), row.contents
  end

  def test_one_possibility
    puzzle = File.read("./lib/board_1.txt")
    @board.intake(puzzle)
    row = Row.new(@board.row(1))
    row.find_spots
    row.solve
    assert_equal [8, 2, 6, 5, 9, 4, 3, 1, 7], row.contents
  end
end
