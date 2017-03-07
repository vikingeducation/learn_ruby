class Temperature
	def initialize(temp)
		@f = temp[:f]
		@c = temp[:c]
	end

	def in_fahrenheit
		@f
	end

	def in_celsius
		(@f - 32) * (5.0/9)
  end
end

