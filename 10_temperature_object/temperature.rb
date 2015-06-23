class Temperature

  def initialize (params)
    @fahrenheit = params[:f]
    @celsius = params[:c]

  end

  def values
    puts @fahrenheit.inspect
    puts @celsius.inspect
  end

  def in_fahrenheit
    if @fahrenheit.nil?
      @fahrenheit = (@celsius*9.0/5.0 +32).round(1)
    end
    return @fahrenheit
  end

  def in_celsius
    if @celsius.nil?
      @celsius = (@fahrenheit -32)*5.0/9.0.round(1)
    end
    return @celsius
  end

  def self.from_celsius(c)
    self.new(:c => c)
  end

  def self.from_fahrenheit(f)
    self.new(:f => f)
  end

end

# t = Temperature.new(:f => 50)
# t.values