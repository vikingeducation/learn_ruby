class Temperature
  def initialize(options = {})

    if options.keys == [:f]
      @input_as = "fahrenheit"
      @fahrenheit = options[:f]
    elsif options.keys == [:c]
      @input_as = "celsius"
      @celsius = options[:c]
    end

  end

  def in_fahrenheit
    if @input_as == "fahrenheit"
      @fahrenheit
    else
      @fahrenheit = (1.8 * @celsius + 32).round(1)
    end
    @fahrenheit
  end

  def in_celsius
    if @input_as == "celsius"
      @celsius
    else
      @celsius = ((@fahrenheit - 32) / 1.8).round(1)
    end
    @celsius
  end

  def self.from_celsius(input_celsius)
    Temperature.new(:c => input_celsius)
  end

  def self.from_fahrenheit(input_fahrenheit)
    Temperature.new(:f => input_fahrenheit)
  end

end

class Celsius < Temperature

  def initialize(input)
    @input_as = "celsius"
    @celsius = input
  end

end

class Fahrenheit < Temperature

  def initialize(input)
    @input_as = "fahrenheit"
    @fahrenheit = input
  end

end