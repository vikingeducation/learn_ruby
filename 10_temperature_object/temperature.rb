class Temperature

  def initialize(temps={})
    @temps = temps
    @c = temps[:c]
    @f = temps[:f]
  end

  def in_fahrenheit
    @temps[:f] != nil ? @temps[:f] : @temps[:c] * (9.0 / 5.0) + 32
  end

  def in_celsius
    @temps[:f] != nil ? (@temps[:f] - 32.0) * (5.0 / 9.0) : @temps[:c]
  end

  def self.from_celsius(temp)
    Temperature.new(:c => temp)
  end

  def self.from_fahrenheit(temp)
    Temperature.new(:f => temp)
  end

end

class Celsius < Temperature
  def initialize(temp, temps={})
    super(temps)
    temps[:c] = temp
  end


end

class Fahrenheit < Temperature
  def initialize(temp, temps={})
    super(temps)
    temps[:f] = temp
  end

end