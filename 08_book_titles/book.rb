class Book

#instantiates variable values
    def initialize
        @title = ""
    end

#allows for setting a new value (assigns value to class(instance) variable)
    def title=(string)
        @title = string
    end

# gets the variable and changes it (not typical "getter" use)
# --Allows you to read the variable and change it

    def title

# I reused all this code from the 03_simon_says code, so if you passed those tests,
# you can reuse the formula for these, adding cases for specific words,
# like prepositions/conjunctions and so forth.

        @title_words = @title.split
        @conjunctions = ["for", "and", "nor", "but", "or", "yet", "so"]
        @prepositions = ["in", "the", "of"]
        @articles = ["a", "an"]
        @proper_case = []
        @title_words.each_with_index do |word, index|
            word = word.capitalize
            if((@conjunctions.include?(word.downcase) || @prepositions.include?(word.downcase) || @articles.include?(word.downcase)) && index != 0)
                word = word.downcase
            end
            @proper_case.push(word)
        end
        return @proper_case.join(" ")

    end



end

