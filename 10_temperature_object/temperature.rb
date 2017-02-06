class Temperature
  def initialize(options)
    @in_celsius = options[:c] ? options[:c] : ftoc(options[:f])
    @in_fahrenheit = options[:f] ? options[:f] : ctof(options[:c])
  end

  attr_reader :in_celsius, :in_fahrenheit

  def self.from_celsius(in_celsius)
    Temperature.new( { c: in_celsius } )
  end

  def self.from_fahrenheit(in_fahrenheit)
    Temperature.new( { f: in_fahrenheit } )
  end

  def ftoc(in_fahrenheit)
    in_celsius = (in_fahrenheit - 32) * 5 / 9
  end

  def ctof(in_celsius)
    in_fahrenheit = in_celsius.to_f * 9 / 5 + 32.0
  end
end

class Celsius < Temperature
  def initialize(in_celsius)
    @in_celsius = in_celsius
    @in_fahrenheit = ctof(in_celsius)
  end
end

class Fahrenheit < Temperature
  def initialize(in_fahrenheit)
    @in_celsius = ftoc(in_fahrenheit)
    @in_fahrenheit = in_fahrenheit
  end
end



