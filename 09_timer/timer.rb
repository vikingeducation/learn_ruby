class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds/60/60
    minutes = @seconds/60 - hours*60
    seconds = @seconds - hours*60*60 - minutes*60
    "#{'%02d' % hours}:#{'%02d' % minutes}:#{'%02d' % seconds}"
  end
end
