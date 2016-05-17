class Book
  attr_reader :title

  def title=(input_title)
    @title=titleize(input_title)
  end

  def titleize(words)
    little_words = ["and","or","the","an","a", "over", "around", "of", "in"]
    titles = []
    words.split.each_with_index do |word, index|
      if little_words.include?(word) && index != 0
        titles << word
      else
        titles << word.capitalize
      end
    end
    titles.join(" ")
  end
end