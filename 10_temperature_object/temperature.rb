class Temperature
  def initialize(opts = {})
    @fahrenheit, @celsius = opts[:f], opts[:c]
    if @fahrenheit != nil && @celsius == nil
      @celsius = ( @fahrenheit - 32 ) * 5.0/9.0
    elsif @celsius != nil && @fahrenheit == nil
      @fahrenheit = (@celsius * 9.0/5.0) + 32
    end
  end
  def in_fahrenheit
    @fahrenheit
  end
  def in_celsius
    @celsius
  end
  def self.from_celsius(celsius_value)
    Temperature.new(c: celsius_value)
  end
  def self.from_fahrenheit(fahrenheit_value)
    Temperature.new(f: fahrenheit_value)
  end
end

class Celsius < Temperature
  def initialize(value)
    @celsius = value
    @fahrenheit = ( value * 9.0 / 5.0 ) + 32
  end
end

class Fahrenheit < Temperature
  def initialize(value)
    @fahrenheit = value
    @celsius = ( value - 32 ) * 5.0/9.0
  end
end