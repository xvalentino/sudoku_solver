require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/row'

class RowTest < Minitest::Test
  def test_row_exists
    row = Row.new
    assert row
  end
end
