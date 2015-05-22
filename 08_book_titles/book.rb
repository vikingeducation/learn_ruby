class Book
	attr_accessor :title
	def initialize
		@title = ''
	end

	def title
		non_capitals = ['and','in','the','of','a','an']
		output = []
		words = @title.split(' ')
		words.each.with_index do |word, index|
			if index != 0 && non_capitals.include?(word)
				output << word
			else
				output << word.capitalize
			end
		end
		output.join(' ')
	end

end