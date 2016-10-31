class Book

  def title=(title)
    no_nos = ['and','in','the','of','a','an']
    i = 0

    @title = title.split(" ").map! do |word|
      i+=1
      if !no_nos.include?(word) || i == 1
        word.capitalize
      else
        word
      end
    end.join(" ")
  end

  def title
    @title
  end

end