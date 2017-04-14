class Temperature
  @value # temperature in celsius

  def initialize(options={})
    if options[:f] == nil
      @value = options[:c] # celsius is our default
    else
      @value = (options[:f]-32)*5.0/9
    end
  end

  def in_celsius
    @value
  end

  def in_fahrenheit
    (@value * 9.0/5) + 32
  end

  def self.from_celsius(x)
    Temperature.new(options={:c=>x})
  end

  def self.from_fahrenheit(y)
    Temperature.new(options={:f=>y})
  end

end

class Celsius < Temperature
  def initialize(c)
    @value = c
  end
end

class Fahrenheit < Temperature
  def initialize(f)
    @value = (f-32)*5.0/9
  end
end
