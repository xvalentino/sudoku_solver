require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/column'

class ColumnTest < Minitest::Test
  def test_column_exists
    column = Column.new
    assert column
  end
end
