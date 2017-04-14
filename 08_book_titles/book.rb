class Book

  def initialize
    @title = ""
  end

  def title=(string)
    little_words = ["the", "over", "in", "on", "for", "and", "of", "a", "an", "by"] # and so on...
    words = string.split(" ")
    words.each {|word| little_words.include?(word) ? word : word.capitalize!}
    words[0].capitalize! # ensure first word is capitalized
    @title = words.reduce { |title, word| "#{title} #{word}"}
  end

  def title
    @title
  end
end
