class Temperature



	def initialize( options)

		@temp = options
		@fahren = @temp.map { | k, v | v }.join.to_i
		@celsius = @temp.map { | k, v | v }.join.to_i


	end


	def in_fahrenheit

		@fahren

	end


	def in_celsius

		@celsius = @temp.map { | k, v | ( v - 32 ) * ( 5.0 / 9.0 ) }.join.to_i

	end

end

=begin
def ftoc(faren)
	( faren - 32 ) * ( 5.0 / 9.0 )
end

def ctof(cel)
	( cel * ( 9.0 / 5.0 )) + 32
end
=end