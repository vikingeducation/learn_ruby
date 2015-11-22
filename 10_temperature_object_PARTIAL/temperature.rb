class Temperature

  class << self
    def from_celsius(celsius)
      new(:c => celsius)
    end

    def from_fahrenheit(fahrenheit)
      new(:f => fahrenheit)
    end
  end

  def initialize(opts = {})
    @options = opts
  end

  def in_fahrenheit
    if @options.has_key?(:c)
      degrees_fahrenheit = @options[:c] / 5.0 * 9 + 32
    else
      degrees_fahrenheit = @options[:f]
    end
    degrees_fahrenheit
  end

  def in_celsius
    if @options.has_key?(:f)
      degrees_celsius = (@options[:f] - 32.0) * 5 / 9
    else
      degrees_celsius = @options[:c]
    end
  degrees_celsius
  end

end

whatever = Temperature.new(:f => 50)
puts whatever.in_fahrenheit
puts whatever.in_celsius