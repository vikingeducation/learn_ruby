class Book
  def title
    @title
  end

  def title=(string)
    @title = titlelize(string)
  end

  def titlelize(string)
    no_capitalization = ["a", "an", "and", "in", "over", "of", "the"]

    all_words = string.split(" ")
    all_words.each { |word| word.capitalize! unless no_capitalization.include?(word) }
    all_words[0].capitalize!
    all_words.join(" ")
  end
end