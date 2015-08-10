# def ftoc(f)
# 	(f - 32.0) * (5.0 / 9.0)
# end

# def ctof(c)
# 	((c * 9.0) / 5.0) + 32.0
# end

class Temperature
	def initialize(options={})
		@f = options[:f]
		@c = options[:c]
	end

	def in_fahrenheit
		return @f if @f
		return ((@c * 9.0) / 5.0) + 32.0
	end

	def in_celsius
		return @c if @c
		return (@f - 32.0) * (5.0 / 9.0)
	end

	def self.from_celsius(c)
		Temperature.new(:c => c)
	end

	def self.from_fahrenheit(f)
		Temperature.new(:f => f)
	end
end

class Celsius < Temperature
	def initialize(t)
		super(:c => t)
	end
end

class Fahrenheit < Temperature
	def initialize(t)
		super(:f => t)
	end
end