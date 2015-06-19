class Book

  def title=(new_title)
    @title = new_title
  end

  def title
    title_words = @title.split(" ")
    title_words[0].capitalize! #first word always cap
    exceptions = ["in", "of", "and", "or", "the", "over", "to", "the", "a", "an", "but"]
    capd_words = title_words.map do |word|
      if exceptions.include?(word)
        word
      else
        word.capitalize
      end
    end
    capd_words.join(" ")
  end
end