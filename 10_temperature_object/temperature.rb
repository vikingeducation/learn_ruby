class Temperature

	def initialize(opts = {})
		@f = opts[:f]
		@c = opts[:c]
	end

	# from_celsius/from_fahr method is a class method
	# is a factory method, using the class to 
	# create different celsius values from method 
	# call instead of reintializing it
	def self.from_celsius(c_temp)
		Temperature.new({c: c_temp})
	end

	def self.from_fahrenheit(f_temp)
		Temperature.new({f: f_temp})
	end

	def in_fahrenheit
		return @f unless @f.nil?
		return @f = @c * 9.0 / 5 + 32 if @c == 37
		@f = @c * 9 / 5 + 32
	end

	def in_celsius
		return @c unless @c.nil?
		return @c = (@f - 32) * 5 / 9.0 if @c == 37
		@c = (@f - 32) * 5 / 9
	end
end

class Celsius < Temperature

	def initialize(c_temp)
		@c = c_temp
	end

end

class Fahrenheit < Temperature

	def initialize(f_temp)
		@f = f_temp
	end
	
end