class Temperature
  attr_accessor :f, :c

  def initialize(options={})
    @options = options
  end
  
  def in_fahrenheit
    if @options.has_key?(:f)
      return @options[:f] 
    elsif @options.has_key?(:c)
      return (@options[:c] * (9.0 / 5.0)) + 32
    end
  end
  

  
  def in_celsius
    if @options.has_key?(:c)
      return @options[:c] 
    elsif @options.has_key?(:f)
      return (@options[:f] - 32) * (5.0 / 9.0) 
    end
  end

  def self.from_celsius(c)
    Temperature.new(:c => c)
  end

  def self.from_fahrenheit(f)
    Temperature.new(:f => f)
  end
end

class Fahrenheit < Temperature
  def initialize(f,options={})
    @options = options
    @options[:f] = f
  end
end

class Celsius < Temperature
  def initialize(c, opts = {})
    @options = opts
    @options[:c] = c
  end
end