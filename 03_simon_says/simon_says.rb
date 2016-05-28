def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(str, time = 2)
	repeated = ""
	time.times do |i|
		if i == (time - 1)
			repeated << str
		else
			repeated << "#{str} "
		end
	end
	repeated
end

def start_of_word(str, index)
	str[0..index - 1]
end

def first_word(str)
	str = str.split(' ')
	str[0]
end

def titleize(str)
	str = str.split(' ').map(&:capitalize)
	str = str.map.with_index do |word, index|
		if word == "If" || word == "And" || word == "Over"  || word == "The"
			if index == 0
				word
			else
				word.downcase
			end
		else 
			word
		end
	end
	str.join(' ')
end





