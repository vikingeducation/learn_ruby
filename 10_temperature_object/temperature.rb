class Temperature

  def self.from_celsius(n)
    Temperature.new({:c => n})
  end

  def self.from_fahrenheit(n)
    Temperature.new({:f => n})
  end

  def initialize(options={})
    @temp = options
  end

  def in_fahrenheit
    if !@temp[:f].nil?
      @temp[:f]
    else
        9.0*@temp[:c]/5 + 32
    end
  end

  def in_celsius
    if !@temp[:c].nil?
      @temp[:c]
    else
      5*(@temp[:f]-32)/9
    end
  end

end

class Celsius < Temperature
  def initialize(n)
    @temp = {:c => n}
  end
end

class Fahrenheit < Temperature
  def initialize(n)
    @temp = {:f => n}
  end
end
