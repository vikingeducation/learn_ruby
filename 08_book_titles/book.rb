class Book 
	
	# Constructor
	def initialize 
		@title = ""
	end

	# Read
	def title 
		@title
	end

	# Write
	def title=(phrase) 
		phrase_array = []
		non_caps = ["and", "in", "the", "of", "a", "an"]
		phrase.split(" ").each_with_index do |word, location|
			if non_caps.include?(word.downcase) && location != 0
				phrase_array << word
			else
				phrase_array << word[0].upcase + word[1..word.length]
			end
		end
		@title = phrase_array.join(" ")
	end

end



