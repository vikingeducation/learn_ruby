class Temperature

  attr_accessor :in_fahrenheit, :in_celsius

  def self.from_celsius(celsius)
    new(:c => celsius)
  end

  def self.from_fahrenheit(fahrenheit)
    new(:f => fahrenheit)
  end

  def initialize(options)
    @in_fahrenheit = options[:f] || options[:c] * (9.0/5.0) + 32
    @in_celsius = options[:c] || (options[:f] - 32) * (5.0/9.0)
  end

end

class Celsius < Temperature
  def initialize(celcius)
    super(:c => celcius)
  end
end

class Fahrenheit < Temperature
  def initialize(fahrenheit)
    super(:f => fahrenheit)
  end
end
