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
    @board.intake_row(1, '826594317')
    assert_equal [8, 2, 6, 5, 9, 4, 3, 1, 7], @board.row(1)
  end


  def test_board_take_blank_space
    @board.intake_row(1, '826590317')
    assert_instance_of((Spot), @board.row(1)[5])
  end

  def test_take_two_rows
    @board.intake_row(1, '123456789')
    assert_equal (1..9).to_a, @board.row(1)
  end
end
