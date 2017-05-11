class Temperature

  #attr_accessor :f, :c

  def initialize(attrs)
    @fahrenheit = attrs[:f]
    @celsius = attrs[:c]
  end


  def in_celsius
    @celsius ? @celsius : self.from_fahrenheit
  end


  def in_fahrenheit
    @fahrenheit ? @fahrenheit : self.from_celsius
  end


  def from_celsius
    ((@celsius * 1.8) + 32).round(2)
  end


  def from_fahrenheit
    ((@fahrenheit - 32)/1.8).round(2)
  end


 private


  def self.from_celsius(cel)
    Temperature.new(:f => ((cel * 1.8) + 32).round(2))
  end

  def self.from_fahrenheit(fah)
    Temperature.new(:c => ((fah - 32)/1.8).round(2))
  end


end
