class Book
  attr_accessor :title

  @@minor_words = ["a", "an", "in", "and", "or", "of", "but", "the", "over"]

  def initialize
    @title = ""
  end

  def title
    return @title
  end

  def title=(str)
    @title = titleize(str)
  end

  def titleize(title)

    # Split the title into the individual words, capitalize all non-minor words.
    words = title.split.map{|word| (@@minor_words.include? word)? word : word.capitalize}

    # Capitalize the first word in the title.
    words[0] = words[0].capitalize

    # Re-join the title.
    words.join(" ")

  end

end