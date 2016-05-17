
class Timer

  attr_accessor :seconds

  def initialize
    @hours = 0
    @minutes = 0
    @seconds = 0
  end

  def time_string
    @hours = @seconds/ 3600
    @minutes = @seconds% 3600
    time_string = "#{@hours.to_s.rjust(2, "0")}:#{(@minutes/60).to_s.rjust(2, "0")}:#{(@minutes % 60).to_s.rjust(2, "0")}"
    return time_string
  end

end
