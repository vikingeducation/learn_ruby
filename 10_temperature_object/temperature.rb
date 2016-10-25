# Temperature 
class Temperature

	# Instance methods

	def initialize(options = {}) # options are :f (Fahrenheiet) and :c (Celsius)
		if options.has_key?(:f)
			@@fahrenheit = options[:f]
			@@celsius = 5.0/9.0 * (@@fahrenheit - 32)
		elsif options.has_key?(:c)
			@@celsius = options[:c] 
			@@fahrenheit = 9.0/5.0 * @@celsius + 32
		else 
			raise "Invalid option"
		end
	end

	def in_fahrenheit
		@@fahrenheit
	end

	def in_celsius
		@@celsius
	end

	# Class (factory) methods

	def self.from_celsius(val)
		Temperature.new(:c => val) 
	end

	def self.from_fahrenheit(val)
		Temperature.new(:f => val) 
	end

end

# Celsius (subclass)
class Celsius < Temperature

	def initialize(val)
		@@celsius = val
		@@fahrenheit = 9.0/5.0 * @@celsius + 32
	end

end

# Fahrenheit (subclass)
class Fahrenheit < Temperature

	def initialize(val)
		@@fahrenheit = val
		@@celsius = 5.0/9.0 * (@@fahrenheit - 32)
	end

end
