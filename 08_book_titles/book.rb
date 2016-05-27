class Book

    @book_title = ""

    def title= t
        words = t.split
        words[0].capitalize!
        @book_title = words.map { |word| word == "and" || word == "over" || word == "the" || word == "a" || word == "an" || word == "in" || word == "of" ? word : word.capitalize }.join " "
    end

    def title
        @book_title
    end

end
