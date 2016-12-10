class Temperature

  def initialize(opts = {})
    @options = opts
  end

  def self.from_fahrenheit(num)
    self.new(:f => num)
  end

  def self.from_celsius(num)
    self.new(:c => num)
  end

  def in_fahrenheit
    if @options.keys[0] == :f
      @options.values[0]
    else
      return @options.values[0] * 9.0/5.0 + 32
    end
  end

  def in_celsius
    if @options.keys[0] == :c
      @options.values[0]
    else
      return (@options.values[0] - 32) * 5.0/9.0
    end
  end
end

class Celsius < Temperature

  def initialize(cel)
    @options = {:c => cel}
  end

  def in_celsius
    super
  end

end

class Fahrenheit < Temperature

  def initialize(fah)
    @options = {:f => fah}
  end

  def in_fahrenheit
    super
  end

end