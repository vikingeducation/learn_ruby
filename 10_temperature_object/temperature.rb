# 10. Temperature Object

class Temperature

	def initialize(opts={})

		@fahrenheit = opts[:f] if opts[:f]

		@celsius 		= opts[:c] if opts[:c]

	end

	def in_fahrenheit
		return @fahrenheit if @fahrenheit
		@fahrenheit = Temperature.ctof(@celsius)
	end

	def in_celsius
		return @celsius if @celsius
		@celsius = Temperature.ftoc(@fahrenheit)
	end

	def self.from_celsius(temp)
		Temperature.new(:c => temp)
	end

	def self.from_fahrenheit(temp)
		Temperature.new(:f => temp)
	end

	def self.ftoc(temp)
		(temp - 32) * 5/9.0
	end

	def self.ctof(temp)
		(temp * 9/5.0) + 32
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