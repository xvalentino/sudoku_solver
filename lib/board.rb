require_relative 'spot'  # => true

class Board
  attr_accessor :state  # => nil

  def initialize
    blank_board   # => [[#<Spot:0x007fec73884d18 @data="">, #<Spot:0x007fec73884cc8 @data="">, #<Spot:0x007fec73884c78 @data="">, #<Spot:0x007fec73884c28 @data="">, #<Spot:0x007fec73884bd8 @data="">, #<Spot:0x007fec73884b88 @data="">, #<Spot:0x007fec73884b38 @data="">, #<Spot:0x007fec73884ae8 @data="">, #<Spot:0x007fec73884a98 @data="">], [#<Spot:0x007fec73884a20 @data="">, #<Spot:0x007fec738849d0 @data="">, #<Spot:0x007fec73884980 @data="">, #<Spot:0x007fec73884930 @data="">, #<Spot:0x007fec738848e0 @data="">, #<Spot:0x007fec73884890 @data="">, #<Spot:0x007fec73884840 @data="">, #<Spot:0x007fec738847f0 @data="">, #<Spot:0x007fec738847a0 @data="">], [#<Spot:0x007fec73884728 @data="">, #<Spot:0x007fec738846d8 @data="">, #<Spot:0x007fec73884688 @data="">, #<Spot:0x007fec73884638 @data="">, #<Spot:0x007fec738845e8 @data="">, #<Spot:0x007fec73884598 @data="">, #<Spot:0x007fec73884548 @data="">, #<Spot:0x007fec738844f8 @data="">, #<Spot:0x007fec73884480 @data="">], [#<Spot:0x007fec738844...
  end

  def blank_board
    make_81_spot_state  # => [[#<Spot:0x007fec73884d18 @data="">, #<Spot:0x007fec73884cc8 @data="">, #<Spot:0x007fec73884c78 @data="">, #<Spot:0x007fec73884c28 @data="">, #<Spot:0x007fec73884bd8 @data="">, #<Spot:0x007fec73884b88 @data="">, #<Spot:0x007fec73884b38 @data="">, #<Spot:0x007fec73884ae8 @data="">, #<Spot:0x007fec73884a98 @data="">], [#<Spot:0x007fec73884a20 @data="">, #<Spot:0x007fec738849d0 @data="">, #<Spot:0x007fec73884980 @data="">, #<Spot:0x007fec73884930 @data="">, #<Spot:0x007fec738848e0 @data="">, #<Spot:0x007fec73884890 @data="">, #<Spot:0x007fec73884840 @data="">, #<Spot:0x007fec738847f0 @data="">, #<Spot:0x007fec738847a0 @data="">], [#<Spot:0x007fec73884728 @data="">, #<Spot:0x007fec738846d8 @data="">, #<Spot:0x007fec73884688 @data="">, #<Spot:0x007fec73884638 @data="">, #<Spot:0x007fec738845e8 @data="">, #<Spot:0x007fec73884598 @data="">, #<Spot:0x007fec73884548 @data="">, #<Spot:0x007fec738844f8 @data="">, #<Spot:0x007fec73884480 @data="">], [#<Spot:0x007fec...
  end

  def make_81_spot_state
    @state = Array.new(9) {Array.new(9) {Spot.new}}  # => [[#<Spot:0x007fec73884d18 @data="">, #<Spot:0x007fec73884cc8 @data="">, #<Spot:0x007fec73884c78 @data="">, #<Spot:0x007fec73884c28 @data="">, #<Spot:0x007fec73884bd8 @data="">, #<Spot:0x007fec73884b88 @data="">, #<Spot:0x007fec73884b38 @data="">, #<Spot:0x007fec73884ae8 @data="">, #<Spot:0x007fec73884a98 @data="">], [#<Spot:0x007fec73884a20 @data="">, #<Spot:0x007fec738849d0 @data="">, #<Spot:0x007fec73884980 @data="">, #<Spot:0x007fec73884930 @data="">, #<Spot:0x007fec738848e0 @data="">, #<Spot:0x007fec73884890 @data="">, #<Spot:0x007fec73884840 @data="">, #<Spot:0x007fec738847f0 @data="">, #<Spot:0x007fec738847a0 @data="">], [#<Spot:0x007fec73884728 @data="">, #<Spot:0x007fec738846d8 @data="">, #<Spot:0x007fec73884688 @data="">, #<Spot:0x007fec73884638 @data="">, #<Spot:0x007fec738845e8 @data="">, #<Spot:0x007fec73884598 @data="">, #<Spot:0x007fec73884548 @data="">, #<Spot:0x007fec738844f8 @data="">, #<Spot:0x007fec73884480...
  end

  def turn_81_to_9x9

  end
end

Board.new  # => #<Board:0x007fec73884d90 @state=[[#<Spot:0x007fec73884d18 @data="">, #<Spot:0x007fec73884cc8 @data="">, #<Spot:0x007fec73884c78 @data="">, #<Spot:0x007fec73884c28 @data="">, #<Spot:0x007fec73884bd8 @data="">, #<Spot:0x007fec73884b88 @data="">, #<Spot:0x007fec73884b38 @data="">, #<Spot:0x007fec73884ae8 @data="">, #<Spot:0x007fec73884a98 @data="">], [#<Spot:0x007fec73884a20 @data="">, #<Spot:0x007fec738849d0 @data="">, #<Spot:0x007fec73884980 @data="">, #<Spot:0x007fec73884930 @data="">, #<Spot:0x007fec738848e0 @data="">, #<Spot:0x007fec73884890 @data="">, #<Spot:0x007fec73884840 @data="">, #<Spot:0x007fec738847f0 @data="">, #<Spot:0x007fec738847a0 @data="">], [#<Spot:0x007fec73884728 @data="">, #<Spot:0x007fec738846d8 @data="">, #<Spot:0x007fec73884688 @data="">, #<Spot:0x007fec73884638 @data="">, #<Spot:0x007fec738845e8 @data="">, #<Spot:0x007fec73884598 @data="">, #<Spot:0x007fec73884548 @data="">, #<Spot:0x007fec738844f8 @data="">, #<Spot:0x007fec73884480 @data="">...
