require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/puzzle-start'

class PuzzleStartTest < Minitest::Test
  def test_board_exists
    puzzle = PuzzleStart.new
    assert puzzle
  end
end
