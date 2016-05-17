
class Temperature

  def initialize(options = {})
    options.each do |scale, temperature|
      if scale == :c
        @celsius = temperature
        @fahrenheit = (temperature * (9/5.0)) + 32
      elsif scale  == :f
        @fahrenheit = temperature
        @celsius =  5/9.0 * (temperature - 32)
      end
    end
  end

  def in_celsius
    return @celsius
  end

  def in_fahrenheit
    return @fahrenheit
  end

  def self.from_celsius(temperature)
    Temperature.new(c:temperature)
  end

  def self.from_fahrenheit(temperature)
    Temperature.new(f:temperature)
  end

end

class Celsius < Temperature

  def initialize(temperature)
    @celsius = temperature
    @fahrenheit = (temperature * (9/5.0)) + 32
  end

end

class Fahrenheit < Temperature

  def initialize(temperature)
    @fahrenheit = temperature
    @celsius =  5/9.0 * (temperature - 32)
  end

end