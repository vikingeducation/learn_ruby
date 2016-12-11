# TDD RSpec
# book.rb

class Book

# List of words not to capitalize
  @@conjunctions = ["a", "an", "and", "the", "in", "of"]

# Return the title
  def title
    @title
  end

# Set the title
  def title=(t)
    @title = titleize(t)
  end


# Titleize every word except a list of stored conjunctions
# Always titleize the first word
  def titleize(t)
    words = t.split(" ")
    first_word = words.first 
    words.each do |word|
      special_word = false
      @@conjunctions.each do |x|
        # puts "conjunction is #{x} and word is #{word}"
        if(x == word)
          special_word = true
        end 
      end 

      if((first_word == word) || !special_word)
        word.capitalize!
      end
    end

    words_upper = words.join(" ")
  end

end
