class Temperature
	@in_fahrenheit
	@in_celsius
	def initialize(options={})
		if options[:f]
			@in_fahrenheit = options[:f]
			in_celsius
		end
		if options[:c]
			@in_celsius = options[:c]
			in_fahrenheit
		end
	end

	def self.from_celsius(cel_deg)
    	new(:c => cel_deg)
  	end
  	def self.from_fahrenheit(far_deg)
    	new(:f => far_deg)
  	end

	def in_fahrenheit
		@in_fahrenheit = (@in_celsius) * 9.0 / 5.0 + 32.0
	end

	def in_celsius
		@in_celsius = (@in_fahrenheit - 32.0) * 5.0 / 9.0
	end
end

class Celsius < Temperature
	def initialize(deg)
		super(:c => deg)
	end
end

class Fahrenheit < Temperature
	def initialize(deg)
		super(:f => deg)
	end
end