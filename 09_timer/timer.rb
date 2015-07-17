class Timer

  attr_accessor :seconds

  def initialize()
    @seconds = Time.new(2015, 6, 24, 5, 06, 00).sec
  end

  def time_string
    if @seconds == 0
      string = "00:00:00"
    else
      string = "#{sprintf '%02d', @seconds/3600}:#{sprintf '%02d', (@seconds/60)%60}:#{sprintf '%02d', @seconds%60}"
    end
    string
  end

end
