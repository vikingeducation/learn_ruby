class Temperature
  def initialize(params)
    @fahrenheit = params(:f)
    @celsius = params(:c)
  end

  def in_fahrenheit
    @fahrenheit = (@celsius * (9/5)) + 32
    @fahreneit

  end

  def in_celsius
    @celsius = (@fahrenheit-32)*(5/9)
    @celsius
  end
end

mytemp = Temperature.new(:f => 50)