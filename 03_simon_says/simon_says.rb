def echo(what)
	what	
end

def shout(what)
	what.upcase
end

def repeat(what, num = 2) # equal sign makes it an optional param with a default value
	((what + " ")*num).strip
end

def start_of_word(word, numChars = 1)
	word[0..numChars-1]
end

def first_word(someString)
	someString.split.first
end

def titleize(someString)
	array = someString.capitalize.split

	array.map! { |e| 
		if e == "and" || e == "or" || e == "to" || e == "the"
			e #do nothing
		else
			e.capitalize 
		end
	}
	array.join(" ")
end