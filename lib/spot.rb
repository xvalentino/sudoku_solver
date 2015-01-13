class Spot
  attr_accessor :data
  def initialize
    @data = ''
  end

  def to_s
    @data
  end

  def set_data(value)
    if is_valid_one_digit_number?(value)
      @data = value
    else
      @data = ''
    end
  end

  def is_valid_one_digit_number?(value)
    (1..9).to_a.include?(value.to_i) && value.length == 1
  end
end
