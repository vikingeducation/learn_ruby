class Temperature 

def initialize(values)
  @f = values[:f]
  @c = values[:c]
  @c.nil? ? @c = Temperature.ftoc(@f) : @f = Temperature.ctof(@c)
end


def in_fahrenheit
  @f 
end

def in_celsius
  @c
end

#factory methods
def self.from_celsius(values)
  Temperature.new(:c => values)
end

def self.from_fahrenheit(values)
  Temperature.new(:f => values)
end

#test-driving bonus:
def self.ftoc(values)
  (values - 32) * (5.0/9.0)
end

def self.ctof(values)
  (values * (9.0/5.0)) + 32.0
end
end


#subclasses

class Celsius < Temperature
  def initialize(values)
    super(:c => values)
  end
end

class Fahrenheit < Temperature
  def initialize(values)
    super(:f => values)
  end
end