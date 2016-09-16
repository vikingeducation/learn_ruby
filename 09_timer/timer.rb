class Timer
  attr_accessor :seconds
  def seconds(seconds = 0)
    @seconds = seconds
  end
  def time_string
    @hours = @seconds/3600
    @seconds %= 3600
    @minutes = @seconds/60
    @seconds %= 60
    #Time.local(2013,1,1,@hours,@minutes,@seconds).to_s.match(/\d\d(:)\d\d(:)\d\d/).to_s
      
    Time.local(2016,8,15,@hours,@minutes,@seconds).to_s.match(/\d\d(:)\d\d(:)\d\d/).to_s
  end
    
end
