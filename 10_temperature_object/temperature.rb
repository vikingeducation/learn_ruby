class Temperature
  attr_accessor :temp

  def initialize(options={})
    @temp = options
  end

  def in_fahrenheit
    if temp[:f]
      return temp[:f]
    else
      return ((temp[:c] * 9.0)/5.0)+32.0
    end
  end

  def in_celsius
    if temp[:c]
      return temp[:c]
    else
      return ((temp[:f] - 32.0) * 5.0)/9.0
    end
  end

  def self.from_celsius(temp)
    return Temperature.new(:c => temp)
  end

  def self.from_fahrenheit(temp)
    return Temperature.new(:f => temp)
  end
end

class Celsius < Temperature
  attr_accessor :temp

  def initilize(temp)
    @temp = temp
  end

  def in_celsius
    return temp
  end

  def in_fahrenheit
    return ((temp * 9.0)/5.0)+32.0
  end
end

class Fahrenheit < Temperature
  attr_accessor :temp

  def initilize(temp)
    @temp = temp
  end

  def in_celsius
    return ((temp  - 32.0) * 5.0)/9.0
  end

  def in_fahrenheit
    return temp
  end
end
