class Temperature
  attr_accessor :c, :f

  def initialize(temp)
    @c = temp[:c]
    @f = temp[:f]
    @c.nil? ? @c = Temperature.ftoc(@f) : @f = Temperature.ctof(@c)
  end

  def in_celsius
    @c
  end

  def in_fahrenheit
    @f
  end

  def Temperature.ftoc(temp)
    (temp - 32) * 5.0 / 9
  end

  def Temperature.ctof(temp)
    temp * 9.0 / 5 + 32
  end

  def Temperature.from_celsius(temp)
    Temperature.new({:c => temp})
  end

  def Temperature.from_fahrenheit(temp)
    Temperature.new({:f => temp})
  end
end

class Celsius < Temperature
  def initialize(temp)
    super({:c => temp})
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    super({:f => temp})
  end
end
