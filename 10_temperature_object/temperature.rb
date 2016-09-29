class Temperature

  def initialize(opts={})
    @temp = opts
  end

  def in_fahrenheit
    return @temp[:f] if @temp.has_key?(:f)
    return (@temp[:c]*(9.0/5))+32 if @temp.has_key?(:c)
  end

  def in_celsius
    return @temp[:c] if @temp.has_key?(:c)
    return (@temp[:f]-32)*(5.0/9) if @temp.has_key?(:f)
  end

  def self.from_celsius(degree)
    Temperature.new(:c => degree)
  end

  def self.from_fahrenheit(degree)
    Temperature.new(:f => degree)
  end
end

class Celsius < Temperature
  def initialize(degree)
    @temp = {:c => degree}
  end
end

class Fahrenheit < Temperature
  def initialize(degree)
    @temp = {:f => degree}
  end
end