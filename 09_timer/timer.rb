class Timer
  attr_accessor :seconds

  def initialize
    self.seconds = 0
  end

  def time_string
    Time.at(self.seconds).utc.strftime("%H:%M:%S")
  end
end
