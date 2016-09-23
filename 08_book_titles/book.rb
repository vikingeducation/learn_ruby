
class Book
  def title
    @title 
  end

  def title=(book_title)
    list = book_title.split
    firstword = true
    list.each do |word|
      if firstword == true
        word.capitalize!
        firstword = false
      elsif word == "a" || word == "the" || word == "of" || word == "an" || word == "and" || word == "in"
        #no content here
      else
        word.capitalize! 
      end
    end
    final_book_title = list.join(" ")
    @title = final_book_title
  end
end