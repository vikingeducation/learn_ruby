# reversing the string
require 'pry'



# call the block and reverse the given string splitting into an array if there are multiple words
def reverser( &block )

	block.call.split(" ").map { | w | w.reverse }.join(" ")

end





# take in a num and block, call it and add the given num to it
def adder( num=1, &block )

	block.call + num

end



# calls the block if given and iterates up to the given num
def repeater( num=1, &block )


	num.times  do

	 yield if block_given?

	end



end












