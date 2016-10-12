class Book
  #be better to seperate by exceptions, conjuctions, and prepositions?
  #most effecient way to do an_array.include?)
  
  #exceptions
  CONJUNCTIONS = %w[and]
  PREPOSITIONS = %w[in of]
  OTHER_WORDS = %w[the a an]
  
  ALL_EXCEPTIONS = CONJUNCTIONS + PREPOSITIONS + OTHER_WORDS
  
  EXCEPTIONS = %w[the a an]	
  
	def title=(name)
		@name = name  
	end
	  	
	def title  	
	 #@name.split.map(&:capitalize).join(" ")
	
    @name.split.map.with_index do |word, index|
      !ALL_EXCEPTIONS.include?(word) || index == 0 ? word.capitalize : word
      end.join(" ") #just keeping it playful with some spaghetti code :-)
	end
  
end