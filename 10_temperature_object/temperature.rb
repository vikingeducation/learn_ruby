class Temperature
  def initialize (options = {})
    @option = options
  end
  
  def in_fahrenheit
    if @option[:c]
      (@option[:c] * (9.0/5)) + 32
    elsif @option[:f]
      @option[:f]
    end
  end
  
  def in_celsius
    if @option[:f]
      (@option[:f]-32.0) * (5.0/9)
    elsif @option[:c]
      @option[:c]
    end
  end
  
  def self.from_celsius (temperature)
    self.new(:c => temperature)
  end
  
  def self.from_fahrenheit (temperature)
    self.new(:f => temperature)
  end  
    
end

class Celsius < Temperature
  
  def initialize temp
    @temp = temp
    @option = {}
    @option[:c] = @temp
  end
  
end

class Fahrenheit < Temperature
  
  def initialize temp
    @temp = temp
    @option = {}
    @option[:f] = @temp
  end
  
end