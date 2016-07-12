class Temperature

	def initialize(options = {})
		options.each do |key, value|
			instance_variable_set("@#{key}", value)
		end
	end

	def self.from_celsius(temp)
		Temperature.new(:c => temp)
	end

	def self.from_fahrenheit(temp)
		Temperature.new(:f => temp)
	end

	def in_fahrenheit
		if self.instance_variable_defined?("@f")
			@f.to_f
		else
			@c.to_f * (9.0/5.0) + 32
		end
	end

	def in_celsius
		if self.instance_variable_defined?("@c")
			@c.to_f
		else
			(@f.to_f - 32.0) / (9.0/5.0)
		end
	end
end

class Celsius < Temperature
	def initialize(temp)
		@c = temp
	end
end

class Fahrenheit < Temperature
	def initialize(temp)
		@f = temp
	end
end