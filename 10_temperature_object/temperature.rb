class Temperature

  def initialize( options = {})
    @options = options
  end

  def in_fahrenheit
    return @options[:f] unless @options[:f].nil?
    (@options[:c] * 9)/5.0 + 32
  end

  def in_celsius
    return (@options[:f] - 32) * 5/9 if @options[:c].nil?
    @options[:c]
  end

  def self.from_celsius(temp)
    Temperature.new({:c => temp})
  end

  def self.in_celsius
    @options[:c]
  end

  def self.from_fahrenheit(temp)
    Temperature.new({:f => temp})
  end

end

class Celsius < Temperature
  def initialize(temp)
    @options = {:c => temp}
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    @options = {:f => temp}
  end
end
