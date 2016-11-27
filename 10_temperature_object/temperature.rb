class Temperature

  def initialize(temps = {})
    @temps = temps
    @c = temps[:c]
    @f = temps[:f]
  end

  def in_fahrenheit
    if @temps[:f] != nil
      @temps[:f]
    else
      @temps[:c] * (9.0 / 5.0) + 32
    end
  end

  def in_celsius
    if @temps[:f] != nil
      (@temps[:f] - 32) * (5.0 / 9.0)
    else
      @temps[:c]
    end
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