class Book
  attr_accessor :title

  def title
    do_not_cap = ['the', 'a', 'an', 'and', 'in', 'of']
    words_array = @title.split.each_with_index.map do |word, i| 
    if do_not_cap.include?(word) && i != 0
      word
    else
      word.capitalize
    end
  end
  words_array.join(' ')
  end
end