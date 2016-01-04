class Book
  attr_writer :title

  def initialize(title=nil)
    @title = title
  end

  def titleize(phrase)
    words = phrase.split(" ")
    words[0].capitalize!

    little_words = ["a", "an", "and", "in", "of", "on", "or", "over", "the"]

    words.each do |word|
      unless little_words.include?(word)
        word.capitalize!
      end
    end

    new_phrase = ""
    words.each do |word|
      new_phrase += (word + " ")
    end

    new_phrase.strip
  end

  def title=(new_title)
    @title = titleize(new_title)
  end

  def title
    @title
  end
end