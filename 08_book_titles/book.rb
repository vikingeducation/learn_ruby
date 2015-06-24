class Book

  attr_accessor :title

  def title=(string)
    word_array = string.split(" ")
    capitalize_array = []
    no_no_words = ["an", "the", "or", "and", "in", "of", "a"]

    i=0
    word_array.each do |word|
      # if word.length > 3 || i==0
      if !no_no_words.include?(word) || i==0
        word.capitalize
        capitalize_array.push(word.capitalize)
      else
        capitalize_array.push(word)
      end
      i+=1
    end
    @title = capitalize_array.join(" ")
  end

end
