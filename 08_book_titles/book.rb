class Book
  attr_accessor :title
  @@nope = ["the", "a", "an", "and"]

  def initialize()
    @title = String.new()
  end 

  def title
    temp = @title.capitalize!
    words = @title.split(" ")

    words.each do |word|
      if word == word.upcase
        next
      elsif word == "i"
        @title = @title.sub(" i ", " I ")
      elsif word.length > 2 && @@nope.include?(word) == false
        @title = @title.sub(word, word.capitalize)
      end
    end
    return @title 
  end
end