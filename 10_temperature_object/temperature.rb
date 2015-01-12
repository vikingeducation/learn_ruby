class Temperature
  def initialize (options = {})
    if options.include?(:f)
      @fahrenheit = options[:f]
      @celsius = (@fahrenheit - 32)*(5.0/9.0)
    elsif options.include?(:c)
      @celsius = options[:c]
      @fahrenheit = @celsius*(9.0/5.0)+32
    end
  end

  def in_fahrenheit
    @fahrenheit
  end

  def in_celsius
    @celsius
  end

  def self.from_celsius(atemp)
    self.new(:c => atemp)
  end

  def self.from_fahrenheit(atemp)
    self.new(:f => atemp)
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

mytemp = Temperature.new(:f => 50)