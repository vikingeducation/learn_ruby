class Book
  EXCEPTIONS = ["the", "a", "an", "and", "in", "of"]

  def initialize
    @title = nil
  end

  def title=(string)
    words = string.split(" ")
    words = words.map do |word|
      if EXCEPTIONS.include?(word)
        word
      else
        word.capitalize
      end
    end
    words[0] = words[0].capitalize
    @title = words.join(" ")
  end

  def title
    @title
  end
end
