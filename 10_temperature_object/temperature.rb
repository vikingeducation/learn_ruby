class Temperature
  def initialize(options={})
    @fahrenheit = options[:f]
    @celsius = options[:c]

    @fahrenheit = in_fahrenheit if options[:c]
    @celsius = in_celsius if options[:f]
  end

  def in_fahrenheit
    @fahrenheit = @celsius * (9.0/5.0) + 32
  end

  def in_celsius
    @celsius = (@fahrenheit - 32) * (5.0/9.0)
  end

  def self.from_celsius(celsius)
    Temperature.new(c: celsius)
  end

  def self.from_fahrenheit(fahrenheit)
    Temperature.new(f: fahrenheit)
  end
end

class Celsius < Temperature
  def initialize(celsius)
    super(:c => celsius)
  end
end

class Fahrenheit < Temperature
  def initialize(fahrenheit)
    super(:f => fahrenheit)
  end
end