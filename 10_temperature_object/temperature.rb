class Temperature
  attr_reader :fahrenheit, :celsius

  def initialize(params)
    @fahrenheit = params[:f]
    @celsius = params[:c]
  end

  def in_fahrenheit
    if fahrenheit
      fahrenheit
    else
      celsius * 9.0 / 5 + 32
    end
  end

  def in_celsius
    if celsius
      celsius
    else
      (fahrenheit - 32) * 5.0 / 9
    end
  end

  def self.from_celsius(celsius)
    Celsius.new(celsius)
  end

  def self.from_fahrenheit(fahrenheit)
    Fahrenheit.new(fahrenheit)
  end
end

class Celsius < Temperature
  def initialize(celsius)
    @celsius = celsius
  end
end

class Fahrenheit < Temperature
  def initialize(fahrenheit)
    @fahrenheit = fahrenheit
  end
end