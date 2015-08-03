class Temperature

  def self.from_celsius(temp)
    new({:c => temp})
  end

  def self.from_fahrenheit(temp)
    new({:f => temp})
  end

  def self.ftoc(degrees)
    return (degrees - 32) * 5 / 9.0
  end

  def self.ctof(degrees)
    return (degrees * 9 / 5.0) + 32
  end

  def initialize(opts = {})
    if opts[:f]
      @mode = "fahrenheit"
      @degrees = opts[:f]
    elsif opts[:c]
      @mode = "celsius"
      @degrees = opts[:c]
    end
  end

  def in_celsius
    if @mode == "celsius"
      return @degrees
    else
      return self.class.ftoc(@degrees)
    end
  end

  def in_fahrenheit
    if @mode == "fahrenheit"
      return @degrees
    else
      return self.class.ctof(@degrees)
    end
  end
end

class Celsius < Temperature

  def initialize(temp)
    @mode = "celsius"
    @degrees = temp
  end
end

class Fahrenheit < Temperature

  def initialize(temp)
    @mode = "fahrenheit"
    @degrees = temp
  end

end