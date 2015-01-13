require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/board'

class BoardTest < Minitest::Test
  def test_board_exists
    board = Board.new
    assert board
  end

  def setup
    board = Board.new
  end

  def test_board_is_blank_default
    assert_equal , board.state
  end
end
