require 'pry'


class Array


	attr_accessor :array

	def initialize

		@array = array

	end

def sum( *array )

	binding.pry
	if array.empty?
		0
	else
		array.reduce(0) { | r, e | r + e }
	end

end



end