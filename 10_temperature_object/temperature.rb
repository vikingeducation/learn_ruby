class Temperature
  def initialize(options = {})
    @temp = options
  end

  def in_fahrenheit
    if @temp.key?(:f) == true
      return @temp[:f]
    else 
      return (@temp[:c] *9/5.0) + 32
    end

  end

  def in_celsius
    if @temp.key?(:c) == true
      return @temp[:c]
    else
      return (@temp[:f] - 32)*5/9
    end
  end

  def self.from_fahrenheit(num)
      self.new(:f => num)
  end

  def self.from_celsius(num)
      self.new(:c => num)
  end
end

#i understand what these are, I understand what they do, I  just don't get the point. 
class Celsius < Temperature
    def initialize(num, options = {})
        @temp = options
        @temp[:c] = num
    end

    def in_fahrenheit
        super
    end

    def in_celsius
        super
    end
end

class Fahrenheit < Temperature
    def initialize(num, options = {})
        @temp = options
        @temp[:f] = num
    end

    def in_fahrenheit
        super
    end

    def in_celsius
        super
    end

end