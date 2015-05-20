class Temperature
  @options = {}

  def initialize(options = {})
    if options[:f]
      options[:c] =  (options[:f] -32) * (5.to_f/9.to_f)
    elsif options[:c]
      options[:f] = options[:c] * (9.to_f/5.to_f) + 32
    end
    @options = options
  end

  def in_fahrenheit
    @options[:f]
  end

  def in_celsius
    c_temp = (@options[:f] -32) * (5.to_f/9.to_f)
  end

  def from_celsius(in_c)
    @options[:c] = in_c
    @options[:f] = in_c * (9.to_f/5.to_f)
  end
end