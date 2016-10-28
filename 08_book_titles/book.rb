class Book

  def title=(title)
    @title = title

    words_in_title = @title.split
    
    words_in_title.each do |e|
      e.capitalize! unless e == "and" || e == "a" || e == "or" || e == "in" || e == "of" || e == "the" || e == "an"
    end

    words_in_title[0].capitalize!
    @title = words_in_title.join(" ")
  end

  def title
    @title
  end


end

