class Book
  attr_accessor :title

  def title
    words_always_in_lowercase = %w(the a an and in the of)

    words_in_title = @title.split
    words_in_title.each do |word|
      if words_always_in_lowercase.include?(word)
        next
      else
        word.capitalize!
      end
    end

    words_in_title[0].capitalize!

    @title = words_in_title.join(" ")
  end
end