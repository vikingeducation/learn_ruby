# TDD
# temperature.rb
# Topics:
# * floating-point math
# * objects
# * constructors
# * class methods
# * factory methods
# * options hashes

class Temperature
  def initialize(options = {})
    @options = options
  end


# Change the hash value to fahrenheit or return the number of its already in fahrenheit
# Use to_f to change a value to a float
  def in_fahrenheit
    if (@options.key?(:f))
      @options[:f]
    else
      ((@options[:c].to_f * 9) / 5) + 32
    end
  end

  def in_celsius
    if (@options.key?(:c))
      @options[:c]
    else
      ((@options[:f] - 32) * 5) / 9
    end
  end

  def self.from_fahrenheit(n)

    # Could have used self.new.... here
    Temperature.new(:f => n)
  end

  def self.from_celsius(n)
    # Could have used self.new.... here
    Temperature.new(:c => n)
  end
end

# Extends the temperature class
class Celsius < Temperature

  def initialize(n, options = {})
    @options = options
     @options[:c] = n
  end

  def in_celsius
    super
  end

  def in_fahrenheit
    super
  end
end

# Extends the temperature class
  class Fahrenheit < Temperature
  def initialize(n, options = {})
    @options = options
    @options[:f] = n
  end

  def in_celsius
    super
  end

  def in_fahrenheit
    super
  end
end
