def ftoc(degrees)
  (degrees - 32).to_f * 5.0 / 9.0
end

def ctof(d)
  d * 9.0 / 5.0 + 32.0
end

# ----------------------------------------------------------------------
# Temperature
# ----------------------------------------------------------------------

class Temperature

  attr_accessor :degrees

  def initialize(options = {})
    @degrees = options
  end

  def self.from_celsius(d)
    Temperature.new({c: d})
  end

  def self.from_fahrenheit(d)
    Temperature.new({f: d})
  end

  def in_fahrenheit
    if degrees[:f]
      degrees[:f]
    else
      ctof(degrees[:c])
    end
  end

  def in_celsius
    if degrees[:f]
      ftoc(degrees[:f])
    else
      degrees[:c]
    end
  end

end

# ----------------------------------------------------------------------
# Celsius
# ----------------------------------------------------------------------

class Celsius < Temperature

  attr_accessor :degree

  def initialize(d)
    @degree = d
  end

  def in_celsius
    degree
  end

  def in_fahrenheit
    ctof(degree)
  end

end

# ----------------------------------------------------------------------
# Fahrenheit
# ----------------------------------------------------------------------

class Fahrenheit < Temperature

  attr_accessor :degree

  def initialize(d)
    @degree = d
  end

  def in_fahrenheit
    degree
  end

  def in_celsius
    ftoc(degree)
  end

end
