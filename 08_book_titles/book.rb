class Book
  attr_accessor :title


  def title=(title2)
    @title = titleize(title2)
  end

  def titleize(title1)
   skip = ["a","an","and","the","or","over","of", "in"]
   titles = []
   title1.split.each_with_index do |word, i|
     if skip.include?(word) && i != 0
       titles.push(word)
    else
      titles.push(word.capitalize)
    end
   end
   titles.join(" ")
  end
  
end