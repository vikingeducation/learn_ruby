def titleize(title)
	little_words = ["a", "an", "the", "and", "but", "or", "for", "nor", "on", "over", "at", "to", "from", "by", "in", "of"]
	upcase_title = []
	title_array = title.split(" ")
	title_array.each_with_index do |word, index|
		if (index != 0 && index != title_array.length-1) && little_words.include?(word)
			upcase_title << word
		elsif (word.to_i != 0) || (word == "0")
			upcase_title << word
		else			
			word[0] = word[0].upcase!
			upcase_title << word
		end
	end
	upcase_title.join(" ")
end

class Book
	def title=(title)
		@title = titleize(title)
	end

	def title
		@title
	end
end