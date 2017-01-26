class Temperature
  @fahrenheit = nil
  @celsius = nil

  attr_accessor :celsius, :fahrenheit

  def self.from_celsius(degrees)
    temperature = Temperature.new(c: degrees)
  end

  def self.from_fahrenheit(degrees)
    temperature = Temperature.new(f: degrees)
  end

  def initialize(options = {})
    if options.has_key?(:f)
      @fahrenheit = options[:f]
    elsif options.has_key?(:c)
      @celsius = options[:c]
    end
  end

  def in_fahrenheit
    unless @fahrenheit.nil?
      @fahrenheit
    else
      (@celsius * 9.0 / 5) + 32
    end
  end

  def in_celsius
    unless @celsius.nil?
      @celsius
    else
      (@fahrenheit - 32) * 5.0 / 9
    end
  end
end

class Celsius < Temperature
  attr_accessor :celsius  

  def initialize(degrees)
    @celsius = degrees
  end
end

class Fahrenheit < Temperature
  attr_accessor :fahrenheit

  def initialize(degrees)
    @fahrenheit = degrees
  end
end