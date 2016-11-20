# TDD RSpec
# timer.rb

class Timer

  def initialize
    @seconds = 0
  end

  def seconds
    @seconds 
  end

  def time_string
    @seconds.utc.strftime("%H:%M:%S")
  end

end