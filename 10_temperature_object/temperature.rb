class Temperature
  def initialize(options = {})
    @f = options[:f]
    @c = options[:c]
  end
  def in_fahrenheit
    return @f if @f
    @c * 9 / 5.0 + 32
  end
  def in_celsius
    return @c if @c
    (@f - 32) * 5 / 9.0
  end
  def self.from_celsius(c)
    Temperature.new(:c => c)
  end
  def self.from_fahrenheit(f)
    Temperature.new(:f => f)
  end
end

class Celsius < Temperature
  def initialize(t)
    super(:c => t)
  end
end
class Fahrenheit < Temperature
  def initialize(t)
    super(:f => t)
  end
end