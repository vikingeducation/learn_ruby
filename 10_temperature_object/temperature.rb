class Temperature

  def initialize(options = {})
    @fahrenheit = options[:f] if options.include?(:f)
    @celsius = options[:c] if options.include?(:c)
  end


  def in_fahrenheit
    # ternary operator:
    # condition ? do_this_if_true : do_this_if_false
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


  # FACTORY METHOD
  # each instance of Temperature class that calls these methods will create :c or :f that takes the value passed into the method
  def self.from_celsius deg
    Temperature.new c: deg
  end


  def self.from_fahrenheit deg
    Temperature.new f: deg
  end

end



# SUBCLASSES

# Celsius inherits all methods from Temperature class
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


