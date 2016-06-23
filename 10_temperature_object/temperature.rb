class Temperature
  def initialize(options_hash)
    options_hash.each do |key, value|
      instance_variable_set("@#{key}", value)
    end
  end

  def self.from_celsius(c)
    Temperature.new(:c => c)
  end

  def self.from_fahrenheit(f)
    Temperature.new(:f => f)
  end

  def in_fahrenheit
    if self.instance_variable_defined?("@f")
      @f.to_f
    else
      @c.to_f * 9 / 5 + 32
    end
  end

  def in_celsius
    if self.instance_variable_defined?("@c")
      @c.to_f
    else
      (@f.to_f - 32) * 5 / 9
    end
  end
end

class Celsius < Temperature
  def initialize(c)
    @c = c
  end
end

class Fahrenheit < Temperature
  def initialize(f)
    @f = f
  end
end

