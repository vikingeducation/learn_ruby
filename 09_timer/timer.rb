class Timer
  attr_accessor :seconds, :time_string

  def initialize
    @seconds = 0
    @time_string
  end

  def time_string
    birth_time = Time.new(2011,2,12)
    my_time = birth_time + (@seconds)
    my_time = my_time.to_s.split(" ")[1]
    @time_string = my_time
  end

  end
