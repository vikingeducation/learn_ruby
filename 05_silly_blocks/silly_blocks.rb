# Reverser
def reverser(&block)
	phrase_arr = block.call.split(" ") # get content of block
	phrase_arr.each do |word|
		word.reverse! # reverse element on phrase_arr directly (no copies made, potentially dangerous!)
	end
	phrase_arr.join(" ")
end

# Adder
def adder(val=1) # block doesn't need to be mentioned
	yield + val
end

# Repeater
def repeater(val=1) # again, block doesn't need to be mentioned
	val.times do
		yield
	end		
end
