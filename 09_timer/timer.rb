class Timer

  def seconds (seconds=0)
    @time = seconds
  end

  def seconds=(seconds_input)
    @time = seconds_input
  end

  def time_string
    seconds = (@time%60)
    #Value of minutes depends on whether the quotient exceeds 60.
    minutes = (@time/60); minutes = minutes > 60 ? minutes - 60 : minutes
    hours = (@time/60)/60
    Time.new(2001,"jan",1,hours,minutes,seconds).strftime("%H:%M:%S")
  end
end
