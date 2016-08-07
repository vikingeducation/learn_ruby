class Book

  def title
    @title
  end

  def title=(title)
    @title = titleize(title)
  end

  def titleize(title)
    words_to_ignore = %w(of and in the a an for yet so but in at with over)
    title_words = title.downcase.split
    title_words[0].capitalize!
    title_words[-1].capitalize!
    title_words.map do |word| 
      word.capitalize! unless words_to_ignore.include?(word)
    end
    title_words.join(' ')
  end
  
end