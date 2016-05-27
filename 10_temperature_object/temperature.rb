require 'pry'



class Temperature


	def initialize args

		@fahrenheit = args[ :f ]
		@celsius = args[ :c ]

	end



	def inspect
		"#{self.class}: F: #{@in_fahrenheit} C: #{@in_celsius}"
	end


	def in_fahrenheit

		if @celsius
			( @celsius * ( 9.0 / 5.0 )) + 32
		else
			@fahrenheit
		end

	end


  def in_celsius

    if @fahrenheit
      ( @fahrenheit - 32 ) * ( 5.0 / 9.0 )
    else
      @celsius
    end

  end




end










