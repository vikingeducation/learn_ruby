class Book
# write your code here.
    attr_accessor :title

    def title=(title)
        articles = ["a", "an", "the", "of", "and", "in"]
        title = title.split
        title.each do |word|
            unless articles.include? word
                word.capitalize!
            end

            if word == "i"
                word.capitalize
            end

            title[0].capitalize!
        end
        title = title.join(" ")
        @title = title
    end
    
end
