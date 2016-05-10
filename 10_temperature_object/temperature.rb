class Temperature
  def initialize options={}
    @fahrenheit = options[:f] if options[:f]
    @celsius = options[:c] if options[:c]
  end

  def in_fahrenheit
    @fahrenheit ? @fahrenheit : Temperature.ctof(@celsius)
  end

  def in_celsius
    @celsius ? @celsius : Temperature.ftoc(@fahrenheit)
  end

  def self.ctof temp
    (temp * (9.0/5.0)) + 32
  end

  def self.ftoc temp
    (temp - 32) * (5.0/9.0)
  end

  def self.from_celsius temp
    Temperature.new(:c => temp)
  end

  def self.from_fahrenheit temp
    Temperature.new(:f => temp)
  end
end

class Celsius < Temperature
  def initialize temp
    @celsius = temp
  end
end

class Fahrenheit < Temperature
  def initialize temp
    @fahrenheit = temp
  end
end
