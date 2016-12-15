class Timer
  attr_accessor :seconds

  def initialize(seconds=0)
    @seconds = seconds
  end

  def time_string
    time = @seconds
    hours, mins, secs = 0, 0, 0
    while time > 60
      if time >= 60 * 60
        hours = time / 60 / 60
        time -= hours * 60 * 60
      elsif time >= 60
        mins = time / 60
        time -= mins * 60
      end
    end
    human_time = "#{sprintf '%02d', hours}:#{sprintf '%02d', mins}:#{sprintf '%02d', time}"
  end
end
