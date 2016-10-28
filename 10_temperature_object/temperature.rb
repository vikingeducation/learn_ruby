class Temperature
  def initialize(options={})

  end
  def in_fahrenheit(c)
    c.to_f * 9.0/5.0 + 32
  end
  def in_celsius(f)
    (f.to_f - 32.0) * 5.0/9.0
  end
end
