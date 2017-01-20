class Temperature
  def initialize(options = {})
    @fahrenheit = nil
    if options.key?(:f)
      @fahrenheit = options[:f]
    elsif options.key?(:c)
      @fahrenheit = self.class.ctof(options[:c])
    end
  end

  def self.from_fahrenheit(temperature)
    new(:f => temperature)
  end

  def self.from_celsius(temperature)
    new(:c => temperature)
  end

  def self.ftoc(temperature)
    (temperature - 32) * (5.0 / 9.0)
  end

  def self.ctof(temperature)
    (temperature * (9.0 / 5.0)) + 32
  end

  def in_fahrenheit
    @fahrenheit
  end

  def in_celsius
    self.class.ftoc(@fahrenheit)
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
