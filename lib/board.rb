require_relative 'spot'
require_relative 'row'

class Board
  attr_accessor :state

  def initialize
    blank_board
  end

  def blank_board
    make_9_9_board
  end

  def make_9_9_board
    @state = Array.new(9) {Array.new(9) {''}}
  end

  def row(num)
    @state[num - 1]
  end

  def intake(text)
    array_of_numbers = split_at_new_lines(text)
    intake_each_row(array_of_numbers)
  end

  def solve
    solve_using_rows
  end

  def solve_using_rows
    (1..9).each do |number|
      Row.new(row(number)).solve
    end
  end

  def split_at_new_lines(text)
    text.split("\n")
  end

  def intake_each_row(array_of_numbers)
    array_of_numbers.each_with_index do |row, index|
      intake_row(index + 1, row)
    end
  end

  def intake_row(row_number, numbers)
    numbers = numbers.chars
    numbers.each_with_index do |number, index|
      if number.to_i > 0
        row(row_number)[index] = number.to_i
      else
        row(row_number)[index] = Spot.new
      end
    end
  end

  def solution
    @solution = put_board_into_one_string
    insert_new_line_every_9_numbers
  end

  def put_board_into_one_string
    @state = @state.flatten
    @state = @state.map(&:to_s)
    @state.inject('') do |pile, num|
      pile + num
    end
  end

  def insert_new_line_every_9_numbers
    @solution.scan(/.{1,9}/).join("\n") + "\n"
  end

end
