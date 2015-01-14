require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/spot'

class SpotTest < Minitest::Test
  def test_spot_exists
    spot = Spot.new
    assert_equal spot, spot
  end

  def test_spot_holds_possibilities
    spot = Spot.new
    assert_equal [1, 2, 3, 4, 5, 6, 7, 8, 9], spot.possibilities
  end
end
