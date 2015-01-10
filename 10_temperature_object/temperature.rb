class Temperature

  def initialize(options = {})
    @celsius = options[:c] if options[:c]
    @fahrenheit = options[:f] if options[:f]
  end
  
  def in_celsius
    return @celsius if @celsius
    (@fahrenheit - 32) * 5.0 / 9
  end
  
  def in_fahrenheit
    return @fahrenheit if @fahrenheit
    @celsius * 9.0 / 5 + 32
  end
  
  def self.from_celsius(degrees_celsius)
    Temperature.new(:c => degrees_celsius)
  end
  
  def self.from_fahrenheit(degrees_fahrenheit)
    Temperature.new(:f => degrees_fahrenheit)
  end
  
  def self.ftoc
  end
  
  def self.ctof
  end
  
end


class Celsius < Temperature
  def initialize(temperature)
    @celsius = temperature
  end
end

class Fahrenheit < Temperature
  def initialize(temperature)
    @fahrenheit = temperature
  end
end
