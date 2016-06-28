class Temperature

	attr_accessor :temps

	def initialize(opts = {})
		@temps = opts
	end

	def in_fahrenheit
		if @temps[:f] != nil
			@temps[:f]
		elsif @temps[:c] != nil
			(@temps[:c]*(9.0/5.0)) + 32
		end
	end

	def in_celsius
		if @temps[:c] != nil
			@temps[:c]
		elsif @temps[:f] != nil
			(@temps[:f] - 32)*(5.0/9.0)
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
	def initialize(number)
		@temps = {:c => number}
	end
end

class Fahrenheit < Temperature
	def initialize(number)
		@temps = {:f => number}
	end
end