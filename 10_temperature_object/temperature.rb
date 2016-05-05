class Temperature
  def initialize(option={})
    @temp = option
  end

  def self.ftoc(temp)
    ((temp[:f].to_f - 32) * 5/9)
  end

  def self.ctof(temp)
    ((temp[:c].to_f * 9/5) + 32)
  end


  #in_fahrenheit and in_celsius refactored to call class methods ftoc and ctof.
  def in_fahrenheit
    if @temp.keys.any?{|key| key == :f}
      @temp[:f]
    elsif @temp.keys.any?{|key| key == :c}
      Temperature.ctof(@temp)
    end
  end

  def in_celsius
    if @temp.keys.any?{|key| key == :f}
      Temperature.ftoc(@temp)
    elsif @temp.keys.any?{|key| key == :c}
      @temp[:c]
    end
  end

  def self.from_fahrenheit(temp)
    Temperature.new(:f => temp)
  end

  def self.from_celsius(temp)
    Temperature.new(:c => temp)
  end
end


#Celsius and Fahrenheit subclasses.
class Celsius < Temperature
  def initialize(temp)
    @temp = {:c => temp}
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    @temp = {:f => temp}
  end
end
