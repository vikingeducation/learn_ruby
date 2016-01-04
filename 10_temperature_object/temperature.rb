class Temperature
  attr_accessor :temp_f, :temp_c

  def initialize(temp_scale={})
    @temp_scale = temp_scale
    if @temp_scale.has_key?(:f)
      @temp_f = temp_scale[:f]
    else
      @temp_f = nil
    end

    if @temp_scale.has_key?(:c)
      @temp_c = temp_scale[:c]
    else
      @temp_c = nil
    end
  end

  def self.ftoc(temp_f)
    (5.0 / 9.0) * (temp_f.to_f - 32.0)
  end

  def self.ctof(temp_c)
    (1.8 * temp_c.to_f) + 32.0
  end

  def in_fahrenheit
    if @temp_f != nil
      @temp_f
    else
      self.class.ctof(@temp_c)
    end
  end

  def in_celsius
    if @temp_c != nil
      @temp_c
    else
      self.class.ftoc(@temp_f)
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
  def initialize(temp)
    @temp_c = temp
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    @temp_f = temp
  end
end