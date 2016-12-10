class Book

  def title
    @title
  end

  def title=(title)
    little_words = ["and","the","over","in","of","a","an"]
    words = title.split(" ")
    words.each_with_index do |word,location|
      if location == 0 || !little_words.include?(word)
        word.capitalize!
      end 
    end
    @title = words.join(" ")
  end

end


