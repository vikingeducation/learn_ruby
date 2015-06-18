class Temperature


def initialize (options={})
  @fahrenheit = options[:f] if options[:f]
  @celsius = options[:c] if options[:c]
end

def in_celsius
  if @fahrenheit
    (@fahrenheit.to_f - 32) * 5/9
  else
    @celsius
  end
end

def in_fahrenheit
  if @celsius
    @celsius.to_f * 9/5 + 32
  else
    @fahrenheit
  end
end

def self.from_celsius(temp)
  self.new(:c => temp)
end

def self.from_fahrenheit(temp)
  self.new(:f => temp)
end

end

class Celsius < Temperature

  def initialize(ctemp)
    @celsius = ctemp
  end

end

class Fahrenheit < Temperature

  def initialize(ftemp)
    @fahrenheit = ftemp
  end

end