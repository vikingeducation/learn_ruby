class Temperature

  def initialize(options = {})
    @fahrenheit = options[:f]
    @celsius    = options[:c]
    if @celsius
      @fahrenheit = Temperature.ctof(@celsius)
    elsif @fahrenheit
      @celsius = Temperature.ftoc(@fahrenheit)
    end
  end

  def in_fahrenheit
    @fahrenheit
  end

  def in_celsius
    @celsius
  end

  def self.from_celsius(celsius)
    Temperature.new(c: celsius)
  end

  def self.from_fahrenheit(fahrenheit)
    Temperature.new(f: fahrenheit)
  end

  def self.ftoc(temp)
    (((temp.to_f - 32) * 5) / 9)
  end

  def self.ctof(temp)
    (((temp.to_f * 9) / 5) + 32)
  end

end

class Celsius < Temperature
  def initialize(cel)
    @celsius = cel
    @fahrenheit = Temperature.ctof(cel)
  end
end

class Fahrenheit < Temperature
  def initialize(fah)
    @fahrenheit = fah
    @celsius = Temperature.ftoc(fah)
  end
end
