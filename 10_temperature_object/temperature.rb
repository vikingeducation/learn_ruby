class Temperature
	def initialize opts = {}
		@options = opts
	end

	def in_fahrenheit
		if @options.key?(:c)
			@options[:c].to_f * 9/5 + 32
		else
			@options[:f]
		end
	end

	def in_celsius
		if @options.key?(:f)
			(@options[:f].to_f-32) * 5/9
		else
			@options[:c]
		end
	end

	def self.from_celsius degree
		self.new(c: degree)
	end

	def self.from_fahrenheit degree
		self.new(f: degree)
	end
end

class Celsius < Temperature

	def initialize degree
		@options= {}
		@options[:c] = degree
	end
end

class Fahrenheit < Temperature
	def initialize degree
		@options= {}
		@options[:f] = degree
	end
end














