class Temperature

	attr_accessor :in_fahrenheit, :in_celsius

	def initialize args

		if args[:f]
			@f = args[:f]
		elsif args[:c]
			@c = args[:c]
		end

	end


	def in_fahrenheit

		if @f
			@f
		elsif @c.in_celsius
			ctof(@f)
		end

	end


	def in_celsius

		if @c
			@c
		else
			ftoc(@c)
		end

	end

end


def ftoc(faren)
	( faren - 32 ) * ( 5.0 / 9.0 )
end

def ctof(cel)
	( cel * ( 9.0 / 5.0 )) + 32
end
