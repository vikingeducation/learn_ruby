class Temperature
  def initialize(options={})
    @f = options[:f]
    @c = options[:c]
  end

  def in_fahrenheit
    @f||=self.class.ctof(@c)
  end

  def in_celsius
    @c||=self.class.ftoc(@f)
  end

  def self.from_celsius(c)
    self.new(:c=>c)
  end

  def self.from_fahrenheit(f)
    self.new(:f=>f)
  end

  def self.ftoc(f)
    (f-32)*5.0/9.0
  end

  def self.ctof(c)
    c*9.0/5.0+32
  end
end

class Celsius < Temperature
  def initialize(c)
    @c=c
  end
end

class Fahrenheit < Temperature
  def initialize(f)
    @f=f
  end
end