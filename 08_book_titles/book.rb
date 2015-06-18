class Book
  attr_accessor :title

  def title=(title)
    articles = ["a", "the", "an"]
    conjunctions = ["and"]
    prepositions = ["in", "of"]
    words = title.split(" ")
    titled_words = words.map do |word|
      if (articles.include? word) || (conjunctions.include? word) || (prepositions.include? word)
        word
      else
        word.capitalize
      end
    end
    titled_words[0].capitalize!
    @title = titled_words.join(' ')
  end

end