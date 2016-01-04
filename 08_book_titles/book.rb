

class Book
    def title
        @title
    end

    def title=(str)
        @title = str
        titleize
    end
    
    def titleize(  )
        words_arr = @title.split(" ")
        little_word_arr = ["the", "and", "to", "over", "a", "an", "the", "in", "of"]
        new_words_arr = words_arr.map do |w| 
            if little_word_arr.include? w
                w
            else
                w.capitalize
            end
        end
        new_words_arr.first.capitalize!
        @title = new_words_arr.join(" ")
    end
end
