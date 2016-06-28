class Temperature
	attr_accessor :in_fahrenheit, :in_celsius
	
	def initialize(options = {})
		if options[:f] != nil
			@in_fahrenheit = options[:f]
			@in_celsius = (@in_fahrenheit - 32) * 5/9
		elsif options[:c] != nil 
			@in_celsius ||= options[:c]
			@in_fahrenheit = (@in_celsius * 9.0/5) + 32
		end
	end

	#class methods
	def self.from_celsius(temp)
		self.new(c: temp)
	end
	def self.from_fahrenheit(temp)
		self.new(f: temp)
	end

	def self.ftoc(ftemp)
		(ftemp - 32) * 5/9
	end
	def self.ctof(ctemp)
		(ctemp * 9.0/5) + 32
	end
end	

