class Temperature
  def initialize(temperature)
    @fahrenheit = temperature[:f] || ctof(temperature[:c])
    @celsius = temperature[:c] || ftoc(temperature[:f])
  end

  def in_fahrenheit 
    return @fahrenheit
  end

  def in_celsius
    return @celsius
  end

  def ftoc(temp_f)
    ( 5.0 / 9.0 ) * ( temp_f - 32 )
  end

  def ctof(temp_c)
    ( 9.0 / 5.0 ) * temp_c + 32
  end
end