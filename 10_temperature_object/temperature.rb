class Temperature
  def initialize(options={})
    @options = options
  end

  def in_fahrenheit
    return (@options[:c].to_f) * 9.0/5.0 + 32.0 if @options[:f].nil?
    @options[:f]
  end

  def in_celsius 
    return (@options[:f].to_f - 32.0 ) * 5.0/9.0 if @options[:c].nil?
    @options[:c]
  end

  def self.from_celsius(celsius)
    self.new(:c => celsius)
  end

   def self.from_fahrenheit(fahrenheit)
    self.new(:f => fahrenheit)
  end
end

class Celsius < Temperature
  def initialize(celsius)
    @options = {:c => celsius}
    # @options = {c: celsius} # alternative syntax (new way)
  end
end

class Fahrenheit < Temperature
  def initialize(fahrenheit)
    @options = {:f => fahrenheit}
  end
end