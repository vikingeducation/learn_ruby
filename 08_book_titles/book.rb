class Book
  
  def initialize
    @title = ""
  end
  
  def title=(name)
    @title = titleize(name)
  end
  
  def title
    @title
  end 
  
  def titleize(words)
    words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but", "in", "of", "an"]
  word_array = words.split(" ")
  word_array.each do |word|
    unless words_no_cap.include?(word)
      word[0] = word[0].upcase
    end
  end
  word_array[0][0] = word_array[0][0].upcase
  word_array.join(" ")
  end

end