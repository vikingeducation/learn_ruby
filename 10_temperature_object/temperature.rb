class Temperature
  def initialize (option = {})
    @temperature = option
  end

  def in_fahrenheit
    if is_celsius?
      @temperature[:c] * 9.0 / 5 + 32
    else
      @temperature[:f]
    end
  end

  def in_celsius
    if is_celsius?
      @temperature[:c]
    else
      (@temperature[:f] - 32) * 5 / 9
    end
  end

  def is_celsius?
    true if @temperature.keys == [:c]
  end

  def self.from_celsius t
    # binding.pry
    tem_hash = {}
    tem_hash[:c] = t
    Temperature.new(tem_hash)
  end

  def self.from_fahrenheit t
    tem_hash = {}
    tem_hash[:f] = t
    Temperature.new(tem_hash)
  end

end

class Celsius < Temperature
  def initialize t
    @temperature = {}
    @temperature[:c] = t
  end
end

class Fahrenheit < Temperature
  def initialize t
    @temperature = {}
    @temperature[:f] = t
  end
end
