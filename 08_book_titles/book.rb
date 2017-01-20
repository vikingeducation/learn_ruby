class Book
  attr_reader :title

  def title=(new_title)
    @title = new_title.split.map.with_index do |word, index|
      (index == 0 or capitalize?(word)) ? word.capitalize : word
    end.join(" ")
  end

  private def capitalize?(word)
    never = ["a", "an", "and", "in", "of", "the"]
    not never.include?(word)
  end
end