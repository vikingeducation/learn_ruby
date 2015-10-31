class Book
  articles = ["a", "an", "the"]

  @title = "title"
  def title=(title)
    word_array = title.split(" ")
    word_array.each do |word| 
      word.capitalize!
      word << " "
    end
    @title = word_array.join.strip
  end

  def title
    return @title
  end
end