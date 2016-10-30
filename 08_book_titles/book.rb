class Book

  def title=(title)
    lowercase_words = ['the','a','an','and','in','of']
    word_array = title.split(' ')
    word_array.map do |word|
      if lowercase_words.include?(word)
        word
      else
        word.capitalize!
      end
    end
    word_array[0].capitalize!
    @title = word_array.join(' ')
  end

  def title
    @title
  end

end