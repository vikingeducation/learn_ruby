class Book

  attr_accessor :title

  def initialize
    @title = :title
  end



  def title
    small_words = ["and", "the", "in", "over", "of", "a", "an"]
    output = []
    words = @title.split(" ")
    words.each_with_index do |word, index|
      if index != 0 && small_words.include?(word)
        output << word
      else
        output << word.capitalize
      end
    end
    output.join(" ").chomp
  end



end