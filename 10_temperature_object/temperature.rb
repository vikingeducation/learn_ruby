class Temperature

	def initialize(options)
		@temp = options.fetch(:f) if options.has_key?(:f)
		@temp ||= self.class.ctof(options.fetch(:c,0))
	end

	def in_fahrenheit
		@temp
	end

	def in_celsius
		self.class.ftoc(@temp)
	end 

	def self.from_celsius(c)
		self.new({ c: c })
	end

	def self.from_fahrenheit(f)
		self.new({ f: f })
	end

	def self.ftoc(f)
		((f-32)/1.8).round(2)
	end

	def self.ctof(c)
		(c*1.8 + 32).round(2)	
	end

end

class Celsius < Temperature
	def initialize(c)
		super({ c: c })
	end
end

class Fahrenheit < Temperature
	def initialize(f)
		super({ f: f })
	end
end

