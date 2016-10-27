class Book
  def conjunction? word
    ["and", "but", "for", "nor", "or", "so", "yet"].include? word
  end
  def preposition? word
    ["a", "an", "in", "of", "the"].include? word


  end
  def title=(title)
    i=0
    @title = title.split(" ").map do |word|
      if i == 0
        i = 1
        word.capitalize
      elsif conjunction? word
        word
      elsif preposition? word
        word
      else
        word.capitalize
      end

    end.join(" ")
  end
  def title
    @title
  end
end