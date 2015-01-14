require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/spot'

class SpotTest < Minitest::Test
  def test_spot_exists
    spot = Spot.new
    assert_equal spot, spot
  end

  def test_can_only_be_1_through_9
    spot = Spot.new
    other_spot = Spot.new
    assert_equal '1', spot.set_data("1")
    assert_equal '', other_spot.set_data("a")
  end
end
