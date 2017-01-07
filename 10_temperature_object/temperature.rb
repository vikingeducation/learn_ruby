class Temperature

  def initialize(options={})
    if options[:f]
      @f=options[:f]
    else
      @c=options[:c]
    end
  end

  def in_fahrenheit
    if @f
      @f
    else
      (@c*(9.0/5.0))+32.0
    end
  end

  def in_celsius
    if @c
      @c
    else
      (@f-32.0)*(5.0/9.0)
    end
  end

  def self.from_celsius(temp)
    Temperature.new(:c => temp)
  end

  def self.from_fahrenheit(temp)
    Temperature.new(:f => temp)
  end
end

  class Celsius < Temperature
    def initialize(temp)
      super(:c => temp)
    end
  end

  class Fahrenheit < Temperature
    def initialize(temp)
      super(:f => temp)
    end
  end
