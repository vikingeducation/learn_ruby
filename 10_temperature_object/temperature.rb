class Temperature
  def initialize(opts = {})
    @options = opts

    if @options.has_key?(:f)
      @fahrenheit = @options[:f]
      @celsius = (@fahrenheit - 32) * 5/9
    end

    if @options.has_key?(:c)
      @celsius = @options[:c]
      @fahrenheit = @celsius*5.0/9 + 32
    end
  end

  def in_fahrenheit
    @fahrenheit
  end

  def in_celsius
    @celsius
  end

end
