class Temperature
	def initialize(options = {})
		@temp_far = options[:f]
		@temp_cel = options[:c]
	end

	def self.from_celsius(num)
		Temperature.new(:c => num)
	end

	def self.from_fahrenheit(num)
		Temperature.new(:f => num)
	end



	def in_fahrenheit
		if !@temp_cel.nil?
			@temp_far = (@temp_cel * 1.8) + 32.0
		end
		@temp_far
	end

	def in_celsius
		if !@temp_far.nil?
			@temp_cel = (@temp_far - 32.0) * 5.0/9.0
		end
		@temp_cel
	end
end

class Celsius < Temperature
	def initialize(num)
		@temp_cel = num
	end
end

class Fahrenheit < Temperature
	def initialize(num)
		@temp_far = num
	end
end