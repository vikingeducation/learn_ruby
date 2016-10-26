class Temperature
  def initialize(temp_hash)
    @f = temp_hash[:f]
    @c = temp_hash[:c]
  end

  def in_fahrenheit
    @f              ||
    (@c * 9.0 / 5.0) +32
  end

  def in_celsius
    @c              ||
    (@f - 32) * 5.0 / 9.0
  end


  class << self
    def from_fahrenheit temp
      Temperature.new({f: temp})
    end

    def from_celsius temp
      Temperature.new({c: temp})
    end
  end
end


class Celsius < Temperature
  def initialize temp
    super(c: temp)
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    super(f: temp)
  end
end