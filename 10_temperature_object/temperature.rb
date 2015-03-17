class Temperature
	def initialize(opts = {})
		@f = opts[:f] || nil
		@c = opts[:c] || nil
	end

	def in_fahrenheit
		if @f
			@f
		else
			(@c * (9.0/5.0)) + 32
		end
	end

	def in_celsius
		if @c
			@c
		else
			(@f - 32) * (5.0/9.0)
		end
	end
end