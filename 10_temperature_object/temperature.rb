
class Temperature

    def initialize (options = {})
        @fahrenheit = options[:f]
        @celsius = options[:c]

        @fahrenheit ||= 9*@celsius / 5.0 + 32
        @celsius ||= 5 * (@fahrenheit - 32) / 9.0
    end

    def in_fahrenheit
        @fahrenheit
    end

    def in_celsius
        @celsius
    end
    
    def self.from_celsius( temp_cel )
        Temperature.new( {:c=>temp_cel} )
    end

    def self.from_fahrenheit( temp_far )
        Temperature.new( {:f=>temp_far} )
    end

end

class Celsius < Temperature
  def initialize(c)
    super(:c => c)
  end
end


class Fahrenheit < Temperature
  def initialize(f)
    super(:f => f)
  end
end

