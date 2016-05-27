class Temperature

    def initialize options
        @celsius = options[:c]
        @fahrenheit = options[:f]
    end

    def self.from_celsius c
        Temperature.new(:c => c)
    end

    def self.from_fahrenheit f
        Temperature.new(:f => f)
    end


    def in_celsius
        return @celsius if !@celsius.nil?

        (@fahrenheit - 32) * 5.0 / 9.0
    end

    def in_fahrenheit
        return @fahrenheit if !@fahrenheit.nil?

        @celsius * 9.0 / 5.0 + 32
    end
end

class Celsius < Temperature

    def initialize option
        @celsius = option
    end

end

class Fahrenheit < Temperature

    def initialize option
        @fahrenheit = option
    end

end
