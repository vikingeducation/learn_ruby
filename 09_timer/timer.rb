class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds / 60 / 60
    minutes = @seconds / 60 % 60
    seconds = @seconds % 60

    "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  end

  def padded(number)
    if number.to_s.length == 2
      number.to_s
    else
      "0#{number}"
    end
  end
end