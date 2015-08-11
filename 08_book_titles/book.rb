#book

class Book
    
    def title=(str)
        @title = 
        str.split.each_with_index do |word, i|
            if (!["the", "and", "a", "an", "in", "of"].include?(word) || i == 0) && (!word.is_a? Integer)
                word.capitalize!
            end
        end * " "
        # str.split.map.with_index do |word, i|
        #     if (!["the", "and", "a", "an", "in", "of"].include?(word) || i == 0) && (!word.is_a? Integer)
        #         word.capitalize!
        #     else
        #         word
        #     end
        # end * " "
    end
    
    def title
        @title
    end
    
end
        