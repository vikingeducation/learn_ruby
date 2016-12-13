#write your code here
def echo what_to_echo
	what_to_echo
end

def shout what_to_shout
	what_to_shout.upcase
end

def repeat what_to_repeat, how_many_times = 2
	result = ""
	(how_many_times - 1).times do
		result = result + what_to_repeat + " "
	end
	result = result + what_to_repeat
end

def start_of_word the_word, how_many_letters
	how_many_letters_m_1 = how_many_letters - 1
	result = the_word[0..how_many_letters_m_1]
end

def first_word the_sentence
	the_first_word = the_sentence.split
	the_first_word[0]
end

def titleize the_sentence
	little_words = ["and", "or", "over", "but", "the"] 
	the_split_version = the_sentence.split
	(the_split_version.length - 1).times do |i|
		if(i != 0)
			if(little_words.include? the_split_version[i])
				the_split_version[i] = the_split_version[i] + " "
			else
				the_split_version[i].capitalize!
				the_split_version[i] = the_split_version[i] + " "
			end
		else
				the_split_version[i].capitalize!
				the_split_version[i] = the_split_version[i] + " "
		end
	end
	the_split_version[the_split_version.length - 1].capitalize!
	the_split_version.join
end
