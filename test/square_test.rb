require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/square'

class SquareTest < Minitest::Test
  def test_square_exists
    square = Square.new
    assert square
  end
end
