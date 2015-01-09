class Book
  attr_reader :title

  def title=(book_title)
    book_title_split = book_title.split(" ")
    simple_words = ["the", "a", "an", "and", "in", "of"]
    puts book_title_split
    book_title_split.map do |word|
      if simple_words.include?(word)
        word.downcase!
      else
        word.capitalize!
      end
    end
    book_title_split[0].capitalize!
    @title = book_title_split.join(" ")
  end
end

mybook = Book.new
mybook.title = "war and peace"
puts mybook.title