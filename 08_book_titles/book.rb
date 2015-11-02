class Book
  attr_reader :title

  def title=(string)
    do_not_cap = ['the', 'a', 'an', 'and', 'over', 'in', 'of']
    words = []
    string.capitalize.split(' ').collect { |word| do_not_cap.include?(word) ? words << word : words << word.capitalize }
    @title = words.join(' ')
  end
end