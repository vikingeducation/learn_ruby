class Timer
  attr_accessor :seconds

  def initialize()
    @seconds=0
    @time_string=""
  end

  def seconds
    @seconds
  end

  def seconds=(number)
    @seconds = number
  end

  def time_string
    h,m = 0,0

    while @seconds>60
      m+=1
      @seconds-=60
    end
    while m>60
      h+=1
      m-=60
    end
    #@seconds<9 ? @time_string<<"0#{@seconds}" : @time_string<<"#{@seconds}"

    "%02d:%02d:%02d" % [h,m,@seconds]
    #@time_string.join(":")
  end

end