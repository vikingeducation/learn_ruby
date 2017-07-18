class Timer
  #write your code here
  attr_accessor :seconds, :time_string

  def initialize
	@seconds = 0
  end

  def time_string()
	time = @seconds

	hours_i = (time / 3600)
	minutes_i = (time / 60 - hours_i * 60)

	hours = hours_i.to_s.rjust(2, "0")
	minutes = minutes_i.to_s.rjust(2, "0")
	seconds = (time - hours_i * 3600 - minutes_i * 60).to_s.rjust(2, "0")
	var = hours + ":" + minutes + ":" + seconds

  end

end
