class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    remaining_seconds = seconds

    hours = remaining_seconds / 3600
    if hours > 0
      remaining_seconds = seconds - (hours * 3600)
    end
    
    minutes = remaining_seconds / 60
    if minutes > 0
      remaining_seconds = remaining_seconds - (minutes * 60)
    end

    time_array = [hours,minutes,remaining_seconds]
    stringified_time_array = time_array.map do |interval|
      "%02d" % interval
    end
    stringified_time_array.join(":")
  end
end