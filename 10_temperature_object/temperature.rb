class Temperature
	def initialize(options = {})
		@options = options
	end

	def in_fahrenheit
		return (@options[:c] * (9.0 / 5.0) + 32) if @options[:c]
		return @options[:f] if @options[:f]
	end

	def in_celsius
		return ((@options[:f] - 32.0) / (9.0 / 5.0)).round if @options[:f]
		return @options[:c] if @options[:c]
	end

	def self.from_celsius(temp)
		Temperature.new(c: temp)
	end

	def self.from_fahrenheit(temp)
		Temperature.new(f: temp)
	end
end

class Celsius < Temperature
	def initialize(temp)
		super(c: temp)
	end
end

class Fahrenheit < Temperature
	def initialize(temp)
		super(f: temp)
	end
end