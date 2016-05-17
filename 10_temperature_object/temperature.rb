class Temperature
  def initialize (opts = {})
    # temperature is saved in fahrenheit
    if opts.has_key?(:f)
      @temperature = opts[:f]
    end

    if opts.has_key?(:c)
      @temperature = Temperature.ctof(opts[:c])
    end
  end

  def in_fahrenheit
    @temperature
  end

  def in_celsius
    Temperature.ftoc(@temperature)
  end

  #factory methods
  def self.from_celsius(degrees_celsius)
    Temperature.new({c: degrees_celsius})
  end

  def self.from_fahrenheit(degrees_fahrenheit)
    Temperature.new({f: degrees_fahrenheit})
  end

  def self.ftoc(degrees_fahrenheit)
    (degrees_fahrenheit - 32.0) * 5/9
  end

  def self.ctof(degrees_celsius)
    degrees_celsius * 9.0/5 + 32
  end
end

class Celsius < Temperature
  def initialize (degrees_celsius)
    @temperature = Temperature.ctof(degrees_celsius)
  end
end

class Fahrenheit < Temperature
  def initialize (degrees_fahrenheit)
    @temperature = degrees_fahrenheit
  end
end