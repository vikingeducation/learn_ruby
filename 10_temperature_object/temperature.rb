class Temperature

  def Temperature.from_celsius(celsius)
    Temperature.new(c:celsius)
  end

  def Temperature.from_fahrenheit(fahrenheit)
    Temperature.new(f:fahrenheit)
  end

  def initialize(options = {})
    @fahrenheit = options[:f] 
    @celsius = options[:c]
  end

  def in_fahrenheit
     @fahrenheit || (@celsius * 9.0 / 5) + 32
  end

  def in_celsius
    @celsius || (@fahrenheit - 32)* 5.0 / 9 
  end
end

class Celsius < Temperature
  def initialize(celsius)
    super(c:celsius)
  end
end

class Fahrenheit < Temperature
  def initialize(fahrenheit)
    super(f:fahrenheit)
  end
end