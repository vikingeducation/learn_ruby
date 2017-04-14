class Timer

  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def time_string
    def add_0(x)
      x < 10 ? "0#{x}" : "#{x}"
    end
    "#{add_0(@hours)}:#{add_0(@minutes)}:#{add_0(@seconds)}"
  end

  def seconds=(x)
    @hours = x / 3600
    @minutes = (x % 3600) / 60
    @seconds = (x % 3600) % 60
  end

  def seconds
    @seconds
  end
end
