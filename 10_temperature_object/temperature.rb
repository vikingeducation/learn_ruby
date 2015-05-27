class Temperature
  
  def initialize(options = {})
    if options[:f]
      options[:c] =  (options[:f] -32) * (5.to_f/9.to_f)
    elsif options[:c]
      
    end
    @options = options
  end

  def self.convert_to_f(temp_in_c)
    temp_in_c * (9.to_f/5.to_f) + 32
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

  def self.from_celsius(num)
    self.new(:c => num)
  end

  def self.from_fahrenheit(num)
    self.new(:f => num)
  end
end