class Book

  attr_accessor :title

  def initialize
    @title = title

  end

  def title=(book_title)
    words_no_cap = ["a", "an", "the", "and", "in", "of"]
    @title = book_title.capitalize!.split(' ').each{|word|
      if words_no_cap.include?(word)
        word
      else
        word.capitalize!
      end
    }.join(" ")
  end

#  def title=(book_title)
#    @title = book_title.split(' ').each{|word| word.capitalize! unless word.length <= 3}.join(' ')
#  end


end
