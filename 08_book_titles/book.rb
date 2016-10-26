class Book
  def title
    @title
  end

  def title=(title)
    @title = titlieze(title)
  end

  private
  def titlieze(title)
    little_words = ["the", "a", "in", "of", "and", "an"]
    arr = title.split(" ")
    return_string = arr.shift.capitalize

    arr.each do |word|
      if little_words.include?(word)
        add_word = word
      else
        add_word = word.capitalize
      end
      return_string += " " + add_word
    end
    return_string
  end

end