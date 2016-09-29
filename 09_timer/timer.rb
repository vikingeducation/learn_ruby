class Timer

  attr_writer :seconds
  def seconds
    @seconds=0
  end

  def time_string
    padded(@seconds/3600)+":"+padded(@seconds%3600/60)+":"+padded(@seconds%60)
  end

  def padded(num=0)
    num<10 ? "0"+num.to_s : num.to_s
  end

end