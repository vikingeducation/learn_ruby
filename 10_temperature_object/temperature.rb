class Temperature
  def self.from_celsius(celcius)
    new(c: celcius)
  end
  def self.from_fahrenheit(fahrenheit)
    new(f: fahrenheit)
  end

  def initialize(options = {})
    @temp_f = options[:f]
    @temp_c = options[:c]
  end

  def in_fahrenheit
    @temp_f ? @temp_f : ((@temp_c  * 1.8 ) + 32)
  end

  def in_celsius
    @temp_c ? @temp_c : ((@temp_f - 32) / 1.8).round
  end

  def ftoc(f)
    (f-32) * (5.0/9.0)
  end

  def ctof(c)
    c * (9.0/5.0) + 32
  end
end

class Celsius < Temperature
  def initialize(c)
    super(:c => c)
  end
end


class Fahrenheit < Temperature
  def initialize(f)
    super(:f => f)
  end
end