class Temperature

  def initialize options={}
    @fahrenheit = options[:f] if options[:f]
    @celsius = options[:c] if options[:c]
  end

  def in_fahrenheit
    @fahrenheit ? @fahrenheit : @celsius.to_f * 9 / 5 + 32
  end

  def in_celsius
    @celsius ? @celsius : (@fahrenheit.to_f - 32) * 5 / 9
  end

  def self.from_celsius temp
    Temperature.new(:c => temp)
  end

  def self.from_fahrenheit temp
    Temperature.new(:f => temp)
  end
end

class Celsius < Temperature
  def initialize ctemp
    @celsius = ctemp
  end
end

class Fahrenheit < Temperature
  def initialize ftemp
    @fahrenheit = ftemp
  end
end