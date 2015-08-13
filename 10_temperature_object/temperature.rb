class Temperature
  def initialize(opts = {})
    @options = opts

    if @options.has_key?(:f)
      @fahrenheit = @options[:f]
      @celsius = (@fahrenheit - 32) * 5/9
    end

    if @options.has_key?(:c)
      @celsius = @options[:c]
      @fahrenheit = @celsius*9/5.0 + 32
    end
  end

  def in_fahrenheit
    @fahrenheit
  end

  def in_celsius
    @celsius
  end
  
  def self.from_celsius(c)
      Temperature.new(:c => c)
  end
  
  def self.from_fahrenheit(f)
      Temperature.new(:f => f)
  end
  
end

class Celsius < Temperature
    def initialize(c)
        @celcius
    end
end
        