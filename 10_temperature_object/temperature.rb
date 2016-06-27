class Temperature

  attr_accessor :celsius

  def initialize(opt={})
    @farenheit = opt[:f]
    @celsius = opt[:c]
  end

  def in_fahrenheit
    return @farenheit if @farenheit

    ((@celsius * (1.8))+32) || :f

  end

  def in_celsius
    return @celsius if @celsius
    ((@farenheit - 32) / 1.8).round || :c
  end

  def self.from_celsius(temp)
    Temperature.new(c:temp)
  end

  def self.from_fahrenheit(temp)
    Temperature.new(f:temp)
  end

  end

  class Celsius < Temperature

    def initialize(temp)
      @celsius = temp
    end

  end

  class Fahrenheit < Temperature

    def initialize(temp)
      @farenheit = temp
    end

  end

