class Book
  
  def initialize(title = "")
    @title = title
  end

  #attr_write
  def title=(book_title)
    no_capital =["the", "a", "an", "and", "in", "of"]
    title_array = book_title.split(" ")
    
    title_array.each do |word|
      word.capitalize! unless no_capital.include?(word)
    end
    
    title_array[0].capitalize! # Capitalizes first word.
    @title = title_array.join(" ")
    
  end

  #attr_reader
  def title
    @title
  end
end