
# what we're trying to do here is create an object "Timer" with a seconds method that takes the number of seconds elapsed, and a time_string method that returns in hour: minute: second format

require 'pry'

class Timer

  def initialize(s = 0, m = 0, h = 0)
    @seconds = s
    @minutes = m
    @hours = h
  end

  def seconds
    @seconds
  end

  def seconds=(number)
    @seconds = number
  end

  def time_string
    calculate_clock_time
    make_time_read_friendly
  end

end

def calculate_clock_time
  if @seconds > 60
    @minutes = @seconds / 60
    @seconds -= @minutes * 60
  end
  if @minutes > 60
    @hours = @minutes / 60
    @minutes -= @hours * 60
  end
end

def make_time_read_friendly
  time_array = [@hours.to_s,@minutes.to_s,@seconds.to_s]
  time_array.map do |time|
    time.prepend('0') until time.length == 2
  end
  time_array.join(':')
end