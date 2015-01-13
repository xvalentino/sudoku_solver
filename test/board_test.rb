require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/board'

class BoardTest < Minitest::Test
  def test_board_exists
    board = Board.new
    assert board
  end
end
