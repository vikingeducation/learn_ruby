class Book

  def title
    @title
  end

  def title=(name)
    no_cap = ["and", "or", "the", "over", "to", "a", "but", "in", "an", "of"]
    @title = name.split(' ').map.with_index {|word, i| (no_cap.include?(word) && i > 0) ? word : word.capitalize }.join(' ')
  end

end