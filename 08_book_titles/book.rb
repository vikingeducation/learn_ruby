class Book
# write your code here
	attr_accessor :title
	def initialize
		
	end
	def title=(title)
		exceptions = ["a", "the", "and", "an", "in", "and", "of"]
		title_words = title.split
		title_words.length.times do |i|
			if((i != 0) && (exceptions.include? title_words[i]))
				title_words[i] = title_words[i] + " "
			else
				title_words[i].capitalize!
				title_words[i] = title_words[i] + " "
			end
 		end
 		@title = title_words.join
 		@title = @title.chomp(" ")
	end
end