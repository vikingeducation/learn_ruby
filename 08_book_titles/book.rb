class Book
  attr_reader :title

  def title=(title)
    #words to not capitalize
    wordslist = ["and", "over", "the", "a", "in", "of", "an"]

    @title = title
    result= @title.split(' ').each_with_index do |word, index|
      if index == 0
        word.capitalize!
      elsif wordslist.index(word) == nil
        word.capitalize!
      end
    end
    @title = result.join(' ')
  end

end
