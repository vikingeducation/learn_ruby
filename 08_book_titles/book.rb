class Book
  # write your code here
  attr_accessor :title

  # title function given, otherwise there was error
  def title()
	little_words = [ "in", "of", "a", "an", "and", "or", "the" ]
	words_changed = []
	words = @title.split
	for i in 0..words.length-1
	  if little_words.include? words[i] and i != 0
		words_changed.push(words[i])
	  else
		words_changed.push(words[i].capitalize)
	  end
	end
	words_changed.join(" ")
  end

end
