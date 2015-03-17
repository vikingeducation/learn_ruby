class Book
	# getter
	def title
		@title
	end

	# setter
	def title=(title)
		final = ""
		words = title.split(' ')
		banned = ["and","in","the","of","a","an"]
		words.each_with_index do |word,index| 
			# If the word isn't on the banned list or the first word then capitalize it
			unless banned.include?(word) && index != 0
				final << word.capitalize + " "
			else
				# otherwise just add it un-capitalized
				final << word + " "
			end
		end

		@title = final.chomp(" ")
	end

end
