# reversing the string
require 'pry'




def reverser

	result = yield
	result.split(" ").map { |w| w.reverse }.join(" ")


end

def adder(*num)

	if num.empty?
		num = 1
	end

	result = yield num

	result.join + num

end


reverser { }





