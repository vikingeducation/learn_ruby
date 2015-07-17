class Temperature

  def initialize(opts = {})
    @options = opts
  end

  def in_fahrenheit
    if @options[:f]
      @options[:f]
    elsif @options[:c]
      (@options[:c] * (9.0/5.0)) + 32
    end
  end

  def in_celsius
    if @options[:f]
      (@options[:f] - 32) * (5.0/9.0)
    elsif @options[:c]
      @options[:c]
    end
  end

  def self.from_celsius(temp)
    self.new(:c => temp)
  end

  def self.from_fahrenheit(temp)
    self.new(:f => temp)
  end

end

class Celsius < Temperature

  def initialize(num)
    super(:c => num)
  end

end

class Fahrenheit < Temperature

  def initialize(num)
    super(:f => num)
  end

end
