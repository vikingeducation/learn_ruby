class Temperature
  attr_accessor :f,:c, :in_fahrenheit, :in_celsius

  def initialize (option ={})
    @in_fahrenheit
    @in_celsius
    @temperature = option
    @f = @temperature[:f]
    @c = @temperature[:c]
  end

  def in_fahrenheit
    if @f != nil
      temp = @f
    else @c != nil
      temp = (@c * 9.0 / 5) + 32
    end
  end

  def in_celsius
    if @f != nil
      temp = (@f - 32) * 5.0 / 9
    else @c != nil
      temp = @c
    end
  end

  def self.from_celsius cel
    Temperature.new(:c => cel)
  end

  def self.from_fahrenheit fah
    Temperature.new(:f => fah)
  end



end

class Celsius < Temperature

  def initialize cel
    @c = cel
  end
end

class Fahrenheit < Temperature

  def initialize fah
    @f = fah
  end
end
