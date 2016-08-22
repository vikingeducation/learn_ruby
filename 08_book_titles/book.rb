class Book
  def title=(title)
    noncaps = ["THE", "A", "AN", "AND", "IN", "OF"]
    @title = title.split(" ").each_with_index.map do |word, index|
      index == 0 || !noncaps.include?(word.upcase) ? word.capitalize : word
    end.join(" ")
  end

  def title
    @title
  end

end
