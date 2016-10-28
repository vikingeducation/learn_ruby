class Temperature

  def initialize(options = {})
    @options = options
  end

  def f
    @f
  end

  def c
    @c
  end

  def in_fahrenheit
    if @options.key?(:f)
      @options[:f]
    else
      (@options[:c]) * 9.0 / 5 + 32
    end
  end

  def in_celsius
    if @options.key?(:c)
      @options[:c]
    else
      (@options[:f] - 32) * 5.0 / 9
    end
  end

  def self.from_fahrenheit(f)
    Temperature.new({:f=>f})
  end

  def self.from_celsius(c)
    Temperature.new({:c=>c})
  end

end

class Celsius < Temperature

  def initialize(num, options = {})
    @options = options
    @options[:c] = num
  end

end

class Fahrenheit < Temperature

  def initialize(num, options = {})
    @options = options
    @options[:f] = num
  end

end