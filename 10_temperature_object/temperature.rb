require 'pry'
class Temperature

  def initialize(temperatures = {:f => nil, :c => nil })
    @fahrenheit = temperatures[:f]
    @celsius = temperatures[:c]
  end

  def in_fahrenheit
    if @fahrenheit
      @fahrenheit
    else
      (@celsius.to_f * 9/5).to_f + 32.to_f
    end
  end

  def in_celsius
    if @celsius
      @celsius
    else
      (@fahrenheit.to_f - 32).to_f * 5/9.to_f
    end
  end

  def self.from_celsius(c)
    self.new(:c => c)
  end

  def self.from_fahrenheit(f)
    self.new(:f => f)
  end

end

class Celsius < Temperature
  def initialize(c)
    @celsius = c
  end
end

class Fahrenheit < Temperature
  def initialize(f)
    @fahrenheit = f
  end
end
