require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/board'

class BoardTest < Minitest::Test
  def setup
    @board = Board.new
  end

  def test_board_exists
    board = Board.new
    assert board
  end

  def test_board_takes_numbers
    @board.intake_row_1(826594317)
    assert_equal '826594317', @board.row1
  end
end
