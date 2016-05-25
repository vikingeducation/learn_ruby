require 'pry'

class Temperature

	attr_accessor :in_fahrenheit, :in_celsius

	def initialize args

		@f = args[ :f ]
		@c = args[ :c ]

	end




	class Fahrenheit < Temperature

		def in_fahrenheit

			if @f::in_fahrenheit
				@f
			end

		end

	end


	class Celsius < Temperature

		def in_celsius


		end

	end

end


def ftoc(faren)
	( faren - 32 ) * ( 5.0 / 9.0 )
end

def ctof(cel)
	( cel * ( 9.0 / 5.0 )) + 32
end
