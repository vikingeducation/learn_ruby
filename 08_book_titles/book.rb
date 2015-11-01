class Book
  

  @title = "title"
  def title=(title)
    no_caps = ["a", "an", "the", "and", "in", "of"]
    always_caps = ["I"]
    word_array = title.split(" ")
    word_array.each do |word| 
      if !no_caps.include?(word)
        word.capitalize!
      end
      word << " "
    end
    word_array[0].capitalize!
    @title = word_array.join.strip
  end

  def title
    return @title
  end
end