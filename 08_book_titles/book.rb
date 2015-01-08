class Book
  attr_reader :title

  def title=(title)
    input_words = title.split(" ")
    titleized_words = input_words.map do |word|
      if is_not_capitalized? word
        word
      else
        word.capitalize
      end
    end
    titleized_words[0].capitalize!
    @title = titleized_words.join(" ")
  end

  def is_not_capitalized?(word)
    is_conjunction?(word) || is_preposition?(word) || is_article?(word)
  end

  def is_conjunction?(word)
    ["and","or","but","in"].include? word
  end

  def is_preposition?(word)
    ["in","of"].include? word
  end

  def is_article?(word)
    ["a","an","the"].include? word
  end
end