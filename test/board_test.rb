require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/board'
require 'pry'

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
    @board.intake_row(2, '123446789')
    assert_equal [1, 2, 3, 4, 4, 6, 7, 8, 9].to_a, @board.row(2)
  end

  def test_intake_multiple_rows_at_the_same_time
    document = ("826594317\n715638942\n394721865\n163459278\n948267153\n257813694\n531942786\n482176539\n679385421")
    @board.intake(document)
    # puts @board.state
  end

  def test_read_file
    puzzle = File.read("./lib/board_1.txt")
    @board.intake(puzzle)
    # puts @board.state
  end

  def test_solves_row
    puzzle = File.read("./lib/board_1.txt")
    @board.intake(puzzle)
    @board.solve
    assert_equal 8, @board.state[0][0]
  end

  def test_solves_whole_board
    puzzple = File.read("./lib/eachrowboard.txt")
    @board.intake(puzzple)
    @board.solve
    assert_equal File.read("./lib/board_1 copy.txt"), @board.solution
  end
end
