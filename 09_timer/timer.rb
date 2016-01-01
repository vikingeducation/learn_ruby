class Timer

  attr_accessor :seconds


  def initialize
    @seconds = 0
  end


  def padded(num)
    if num < 10
      "0" + num.to_s
    else
      num.to_s
    end
  end



  def time_string
    minutes = seconds / 60
    sec_remaining = seconds % 60
    hours = minutes / 60
    min_remaining = minutes - (hours * 60)

    return padded(hours) + ":" + padded(min_remaining) + ":" + padded(sec_remaining)

  end



end