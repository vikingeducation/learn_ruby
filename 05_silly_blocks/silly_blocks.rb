def reverser
	# break up the input into individual words in an array
	sentence = yield.split(" ")

	# this will be the final output
	final = ""

	# and here's the loop
	sentence.each {|word| final << word.reverse + " "}

	# return final
	final.chomp(" ")
end

def adder(num=1)
	# starting number from yield
	start = yield

	# increment by num or default of 1
	increment = num

	start + increment
end


def repeater(cycles=1)
	cycles.times {yield}
end
