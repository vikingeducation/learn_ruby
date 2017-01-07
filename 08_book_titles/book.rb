class Book
  attr_accessor :title

  def title=(updated_title)
    @title = updated_title.split(" ").each_with_index.map do |word, index|
      if index < 1
        word.capitalize
      elsif !%w(a an the in at on of and).include?(word)
        word.capitalize
      else
        word
      end
    end
    @title = @title.join(" ")
  end
end
