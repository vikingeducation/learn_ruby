class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    time = [@seconds / 3600, @seconds / 60 % 60, @seconds % 60]
    puts time.to_s
    time.collect! { |term| term > 9 ? term.to_s : '0' + term.to_s}
    time.join(':')
  end
end