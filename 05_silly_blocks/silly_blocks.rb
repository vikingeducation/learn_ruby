# reversing the string
require 'pry'




def reverser(&block)

	block.call.split(" ").map { |w| w.reverse }.join(" ")

end






def adder(num=1, &block)

	block.call + num

end




def repeater(num=1, &block)

	i = 1
	until i > num
	 yield if block_given?
	 i += 1
	end



end












