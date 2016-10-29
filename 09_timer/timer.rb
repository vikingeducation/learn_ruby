class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string(n=0)
    hours = "00"
    minutes = "00"
    seconds = "00"

    "#{hours}:#{minutes}:#{if n != 0 then seconds.to_i + n else seconds end}"
  end
end


# User passes argument in seconds
# Passed argument should be broken down into seconds(60), minutes(60), hours(60)
# if n > 60
# 
