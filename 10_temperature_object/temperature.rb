class Temperature


  def initialize(temp = {})
    @temp = temp

  end

  def Temperature.from_celsius(temp_c)
    Temperature.new(:c => temp_c)
  end

  def Temperature.from_fahrenheit(temp_f)
    Temperature.new(:f => temp_f)
  end

  def in_fahrenheit
    if @temp[:f]
      @temp[:f]
    elsif @temp[:c]
      (@temp[:c]) * (9.0/5.0) + 32
    end
  end

  def in_celsius
    if @temp[:c]
      @temp[:c]
    elsif @temp[:f]
      (@temp[:f] - 32) * (5.0/9.0)
    end
  end
end

class Celsius < Temperature
  def initialize(temp)
    super(:c => temp)
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    super(:f => temp)
  end

end
