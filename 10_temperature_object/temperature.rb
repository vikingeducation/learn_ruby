class Temperature

  def initialize(options = {})
    @fahrenheit = options[:f] if options.include?(:f)
    @celsius = options[:c] if options.include?(:c)
  end


  def in_fahrenheit
    @fahrenheit ? @fahrenheit : ctof(@celsius)
  end


  def in_celsius
    @celsius ? @celsius : ftoc(@fahrenheit)
  end


  def ctof deg
    fahrenheit = (9 / 5.0) * deg + 32
  end

  def ftoc deg
    celsius = (deg - 32) * (5.0 / 9)
  end


  def self.from_celsius deg
    Temperature.new c: deg
  end


  def self.from_fahrenheit deg
    Temperature.new f: deg
  end

end



# subclasses

class Celsius < Temperature

  def initialize deg
    @celsius = deg
  end

end


class Fahrenheit < Temperature

  def initialize deg
    @fahrenheit = deg
  end
  
end


