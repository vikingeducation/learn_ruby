require 'pry'



class Temperature



  # create f and c from hash based on value
	def initialize args

		@fahrenheit = args[ :f ]
		@celsius = args[ :c ]

	end




  # checks is cel or fahren is received
	def in_fahrenheit

    # converts to fahrenheit if celsius passed in
		@celsius ? ctof : @fahrenheit

	end




  def in_celsius

    # converts to celsius if fahrenheight value passed to in_celsius
    @fahrenheit ? ftoc : @celsius

  end


  # converting fahrenheit to celsius
  def ftoc
      ( @fahrenheit - 32 ) * ( 5.0 / 9.0 )
  end


  # converting celsius to fahrenheit
  def ctof
      ( @celsius * ( 9.0 / 5.0 )) + 32
  end




  # factory method
  def self.from_celsius( temp )

    # creates new Temperature object passing in hash with celsius and temperature value passed into from_celsius
    Temperature.new(:c => temp )

  end



  def self.from_fahrenheit( temp )

    # creates new Temperature object passing in hash with fahrenheit and temperature value passed into from_fahrenheit
    Temperature.new(:f => temp )

  end



end






# subclasses for celsius and fahrenheit
class Celsius < Temperature

  def in_celsius



  end

end


# subclasses for celsius and fahrenheit
class Fahrenheit < Temperature



end





