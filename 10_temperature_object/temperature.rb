class Temperature
	#converts options hash into C° and F° values
	def initialize(options = {})
		@degreesf, @degreesc = options[:f], options[:c]

		if @degreesf != nil && @degreesc == nil
			@degreesc = (@degreesf - 32) * 5.0 / 9.0
		elsif @degreesc != nil && @degreesf == nil
			@degreesf = (@degreesc * 9.0 / 5.0) + 32
		end
	end
	#returns converted input as F°
	def in_fahrenheit
		@degreesf
	end
	#returns converted input as C°
	def in_celsius
		@degreesc
	end
	#Factory method for inputs from C°
	def self.from_celsius(temperature)
		Temperature.new(:c => temperature)
	end
	#Factory method for inputs from F°
	def self.from_fahrenheit(temperature)
		Temperature.new(:f => temperature)
	end
end
#Temperature subclass to convert input to C°
class Celsius < Temperature
	def initialize(temperature)
		@degreesc = temperature
		@degreesf = (temperature * 9.0 / 5.0) + 32
	end
end
#Temperature subclass to convert input to F°
class Fahrenheit < Temperature
	def initialize(temperature)
		@degreesf = temperature
		@degreesc = (temperature - 32) * 5.0 / 9.0
	end
end