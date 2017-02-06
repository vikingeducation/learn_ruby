class Timer
  def initialize
    @seconds = 0
  end

  attr_accessor :seconds

  def time_string
    hours = @seconds / 60 / 60
    minutes = (@seconds / 60) - (hours * 60)
    seconds = @seconds - (hours * 60 * 60) - (minutes * 60)

    hours_string = hours < 10 ? "0#{hours}" : hours.to_s
    minutes_string = minutes < 10 ? "0#{minutes}" : minutes.to_s
    seconds_string = seconds < 10 ? "0#{seconds}" : seconds.to_s

    "#{hours_string}:#{minutes_string}:#{seconds_string}"
  end
end
