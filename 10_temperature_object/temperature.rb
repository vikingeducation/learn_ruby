class Temperature

  def initialize(degrees)
    @degrees = degrees
  end

  def in_fahrenheit
    if @degrees[:c]
      @degrees[:c] * (9.0 / 5.0) + 32
    else
      @degrees[:f]
    end
  end

  def in_celsius
    if @degrees[:f]
      (@degrees[:f] - 32) * (5.0 / 9.0)
    else
      @degrees[:c]
    end
  end

  def Temperature.from_celsius(c_degrees)
    new(:c => c_degrees)
  end

  def Temperature.from_fahrenheit(f_degrees)
    new(:f => f_degrees)
  end

end

class Celsius < Temperature
  def initialize(c_temp)
    super(:c => c_temp)
  end
end

class Fahrenheit < Temperature
  def initialize(f_temp)
    super(:f => f_temp)
  end
end