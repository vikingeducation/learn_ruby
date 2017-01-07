def reverser_for_word(str)
	last = str.length - 1
     
	(str.length/2).times do |position|
		str[position],str[last - position] = str[last - position],str[position]
	end
	str
end

def reverser
	str = yield.split(" ")
	new_str = ""

    str.each do |word| 
    	new_str << reverser_for_word(word)+" "
    end
	new_str.chop
end	

def adder(add_by=1)
	num = yield
	num+add_by
end	

def repeater(repeat=1)
	repeat.times do
	    yield
	end    
end	