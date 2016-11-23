# TDD RSpec
# timer.rb

class Timer

  def initialize
    @seconds = 0
  end

  def seconds
    @seconds 
  end

  def seconds=(time)
    @seconds = time
  end

  def time_string
    minute = @seconds/60
    hour = minute/60

    remainder_secs = @seconds%60
    remainder_mins = minute%60

    if(@seconds<=9)
      return "00:00:0" + @seconds.to_s
    elsif(@seconds>9 && @seconds <=60)
      return "00:00:" + @seconds.to_s
      # More than 1 min and less than or equal to 9 mins
    elsif(@seconds>60 && @seconds<=(9*60)) 
      if(remainder_secs > 9)
        remainder_sec = remainder_secs.to_s
      else
        remainder_sec = "0" + remainder_secs.to_s
      end
      return "00:0" + minute.to_s + ":" + remainder_sec 
      # More than 9 mins and less than or equal to 59 mins
    elsif(@seconds>(9*60) && @seconds<=(59*60))
      if(remainder_secs > 9)
        remainder_sec = remainder_secs.to_s
      else
        remainder_sec = "0" + remainder.to_s
      end
      return "00:" + minute.to_s + ":" + remainder_sec
      # More than 59 mins but less 9 hours
    elsif(@seconds>(59*60) && @seconds<=(60*60*9))
      # Remainder for seconds
      if(remainder_secs > 9)
        remainder_sec = remainder_secs.to_s
      else
        remainder_sec = "0" + remainder_secs.to_s
      end

      # Remainder for mins
      if(remainder_mins > 9)
        remainder_min = remainder_mins.to_s
      else
        remainder_min = "0" + remainder_mins.to_s
      end

      return "0" + hour.to_s  + ":" + remainder_min + ":" + remainder_sec
    end
  end

end