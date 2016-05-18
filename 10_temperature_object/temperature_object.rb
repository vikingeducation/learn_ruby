class Temperature
  
  def self.from_fahrenheit(temp)
    self.new(:f => temp)  
  end
  
  def self.from_celsius(temp)
    self.new(:c => temp)  
  end

  def self.ftoc(fahrenheit)
  (fahrenheit-32) * (5/9.0)
  end

  def self.ctof(celsius)
   celsius*(9/5.0) + 32
  end


  def initialize(options)
    if options[:f]
      self.fahrenheit = options[:f]
    elsif options[:c]
      self.celsius = options[:c]
    end
  end

  def fahrenheit=(temp)
    @temperature = self.class.ftoc(temp)
  end

  def celsius=(temp)
    @temperature = temp
  end

  def in_fahrenheit
    self.class.ctof(@temperature)
  end

  def in_celsius
    @temperature
  end  

end

  
class Celsius < Temperature
  def initialize(temp)
    self.celsius = temp
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    self.fahrenheit = temp
  end
end














