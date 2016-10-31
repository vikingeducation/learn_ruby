class Temperature
  attr_accessor :f, :c

  def Temperature.from_celsius temp
    Temperature.new(:c => temp)
  end

  def Temperature.from_fahrenheit temp
    Temperature.new(:f => temp)
  end
  
  def initialize args
    @f = args[:f]
    @c = args[:c]
    if @f 
      @c = ftoc
    else
      @f = ctof
    end
  end

  def ftoc
    (@f-32)*5/9.0
  end

  def ctof
    (@c*9/5.0)+32
  end

  def in_fahrenheit
    @f
  end

  def in_celsius
    @c
  end
end

class Celsius < Temperature
  def Celsius.new args
    Temperature.new(:c => 50)
  end
end

class Fahrenheit < Temperature
  def Fahrenheit.new args
    Temperature.new(:f => 50)
  end
end