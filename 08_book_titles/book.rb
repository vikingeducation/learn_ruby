class Book
  def title=(title)
    @title = titleize(title)
  end
  def title
    @title
  end

  def capitalize(word)
    word[0] = word[0].upcase
    word
  end

  def titleize(text)
    array = text.split(' ')
    little_words = ['a', 'an', 'the', 'and', 'or', 'but', 'for', 'by', 'near', 'under', 'over', 'of', 'in']
    output = array.map.with_index(0) do |word, index|
      if index == 0
        capitalize(word)
      elsif little_words.include?(word)
        word
      else
        capitalize(word)
      end
    end
    output = output.join(' ')
  end

end
