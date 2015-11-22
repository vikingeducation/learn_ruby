class Book

  def title
    @title
  end

  def title=(title)
    words_not_to_capitalize = ["the","an","a","in","of","and"]
    capitalized_title = []
    @title=title.split(' ')
    @title.each_with_index do |word,index|
      if index == 0
        capitalized_title << word.capitalize
      elsif words_not_to_capitalize.include? word
        capitalized_title << word
      else
        capitalized_title << word.capitalize
      end
    end
    @title = capitalized_title.join(' ')
  end

end