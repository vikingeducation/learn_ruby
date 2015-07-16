class Temperature
  attr_accessor :f,:c

  def initialize(options={})
    self.f = options[:f] 
    self.c = options[:c] 
  end

  def self.from_celsius(degree)
    Temperature.new(:c => degree)
  end

  def self.from_fahrenheit(degree)
    Temperature.new(:f => degree)
  end

  def in_fahrenheit
    
    if self.f.nil?
      Temperature.ctof(self.c)
    else 
      self.f  
    end
    
  end

  def self.ctof(c)
    9*c/5.to_f+32
  end

  def in_celsius
    if self.c.nil?
      Temperature.ftoc(self.f)
    else
      self.c
    end
  end

  def self.ftoc(f)
    (5*f/9-32*5/9).to_i
  end

end

class Celsius < Temperature
  def initialize(degree)
    super(:c => degree)
  end
end

class Fahrenheit < Temperature
  def initialize(degree)
    super(:f => degree)
  end
end
