class Temperature
  def initialize(options={})
    @f = options[:f] ||= options[:fahrenheit]
    @c = options[:c] ||= options[:celsius]
  end
  def in_fahrenheit
    @f || @c.to_f * 9.0/5.0 + 32
  end
  def in_celsius
    @c || (@f.to_f - 32.0) * 5.0/9.0
  end
  def self.from_celsius(c)
    Temperature.new({:c => c})
  end
  def self.from_fahrenheit(f)
    Temperature.new({:f => f})
  end
end
