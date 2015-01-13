require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/spot'

class SpotTest < Minitest::Test
  def test_spot_exists
    spot = Spot.new
    assert_equal spot, spot
  end

  def test_each_spot_starts_empty
    spot = Spot.new
    assert_equal '', spot.data
  end
end
