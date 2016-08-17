class Book
  
  EXCEPTIONS = %w|the a an and in the of| 
  
  def title
    @title
  end
  
  def title=(new_title)
    @title = new_title.split(" ").map.with_index(0) do |word, index| 
      if !(EXCEPTIONS.include?(word.downcase)) || (index == 0)
        word.capitalize 
      else
        word
      end
    end.join(" ")
    
  end
end