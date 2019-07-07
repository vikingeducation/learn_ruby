class Book
# write your code here.
    attr_accessor :title
    def title(title)
        title = title.split
        title.each do |word|
            word.capitalize!
        end
        title.join(" ")
    end
    
end
