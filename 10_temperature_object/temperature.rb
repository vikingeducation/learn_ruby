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
end	