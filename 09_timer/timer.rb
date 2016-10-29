class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    the_time = ""

    secs = @seconds % 60
    mins = (@seconds/60) % 60
    hrs = @seconds/3600

    the_time = "#{format(hrs)}:#{format(mins)}:#{format(secs)}"
  end

  def format(input)
    input.to_s.length > 1 ? input.to_s : "0#{input.to_s}"
  end

end