class Book
  attr_accessor :title
  def title
    articles = ["and", "in", "the", "of", "a", "an"]
    words = @title.split(" ")
    words = words.each_with_index { |word, index|
        word.capitalize! unless articles.include? word
        if index == 0
          word.capitalize!
        end
    }
    out = words.join(" ")
  end
end