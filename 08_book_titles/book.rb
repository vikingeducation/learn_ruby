# 08. Book Titles

class Book

	attr_writer :title

	def title
		words = @title.split(' ').map do |word|
			little_words = %w{and in the of a an}
			little_words.include?(word) ? word : word.capitalize
		end
		words[0].capitalize!
		words.join(' ')
	end

end