class Temperature

  def initialize hash
    @fahrenheit = hash[:f]
    @celsius = hash[:c]
  end
  
  def in_fahrenheit
  	@fahrenheit ||= @celsius * (9.0/5) + 32
  end 
  
  def in_celsius
    @celsius ||= (@fahrenheit - 32.0) * (5.0 / 9)  
  end
  
  def self.from_celsius(degrees)
    self.new(:c => degrees)
  end
  
  def self.from_fahrenheit(degrees)
    self.new(:f => degrees)
  end  

end

class Celsius < Temperature
  def initialize degrees
    @celsius = degrees
  end
end

class Fahrenheit < Temperature
  def initialize degrees
    @fahrenheit = degrees
  end
end