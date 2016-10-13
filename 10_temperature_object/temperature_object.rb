class Temperature

	attr_accessor :f, :c, :opt

	def initialize(opt = {})
  		@f = opt[:f]
  		@c = opt[:c]
  		@opt = opt
  	end

  	def in_fahrenheit
		@f = opt.include?(:f) ? @opt[:f] : (9/5.0) * @opt[:c] + 32
	end

	def in_celsius
		@c = @opt.include?(:c) ? @opt[:c] : (opt[:f] - 32) * (5/9.0)
	end

	def self.from_fahrenheit(temp)
		Temperature.new({:f => temp})
	end

	def self.from_celsius(temp)
		Temperature.new(:c => temp)
	end
end

class Celsius < Temperature

	def initialize(temp)
		@c = temp
	end

	def in_celsius
		@c
	end

	def in_fahrenheit
		@f = (9/5.0) * @c + 32
	end
end

class Fahrenheit < Temperature

	def initialize(temp)
		@f = temp
	end

	def in_fahrenheit
		@f
	end

	def in_celsius
		@c = (@f - 32) * (5/9.0)
	end
end