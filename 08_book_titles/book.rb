class Book

  attr_writer :title

  # def title=(title)
  #   @title=title
  # end

  def title
    dictionary = ["the", "to", "a", "an", "in", "of", "and"]

    words = @title.split

    words[0].capitalize!

    words.each do |w|

      if dictionary.include?(w)
        w
      else
        w.capitalize!
      end

    end

    @title = words.join(" ")

  end

end