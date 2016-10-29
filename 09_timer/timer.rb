class Timer
  def initialize
    self.seconds=(0)
  end
  def seconds=(seconds)
    @seconds = seconds
    @time_string = Time.at(seconds).utc.strftime("%H:%M:%S")
    
    #Manual Method

    #hours = seconds/3600
    #minutes = seconds % 3600 / 60
    #seconds = seconds % 3600 % 60
    #@time_string = "#{(hours<10 ? '0'+hours.to_s : hours)}:#{(minutes<10 ? '0'+minutes.to_s : minutes)}:#{(seconds<10 ? '0'+seconds.to_s : seconds)}"
  end
  def seconds
    @seconds
  end
  def time_string
    @time_string
  end
end