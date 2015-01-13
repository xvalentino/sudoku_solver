require_relative 'spot'  # => true

class Board
  attr_accessor :state  # => nil

  def initialize
    blank_board
  end

  def blank_board
    make_81_spot_state
  end

  def make_81_spot_state
    @state = (1..81).to_a.inject([]) do |state, spot|
      spot = Spot.new
      state << spot
    end
  end

  def turn_81_to_9x9

  end
end
