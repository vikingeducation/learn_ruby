class Temperature

  def initialize(input = {})
    input.each do |m, t|
      if m == :f
        @fahrenheit = t
        @celsius =  5/9.0 * (t - 32)
      elsif m  == :c
        @celsius = t
        @fahrenheit = (t * (9/5.0)) + 32
      end
    end
  end

  def in_celsius
    return @celsius
  end

  def in_fahrenheit
    return @fahrenheit
  end

  def self.from_celsius(t)
    Temperature.new(c: t)
  end

  def self.from_fahrenheit(t)
    Temperature.new(f: t)
  end

end

class Celsius < Temperature

  def initialize(t)
    @celsius = t
    @fahrenheit = (t * (9/5.0)) + 32
  end

end

class Fahrenheit < Temperature

  def initialize(t)
    @fahrenheit = t
    @celsius =  5/9.0 * (t- 32)
  end

end