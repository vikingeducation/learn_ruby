class Book
  def initialize
    @title = ''
    @untitlized_words = ['a', 'an', 'of', 'in', 'and', 'the', 'over']
  end
  def title=(value)
    @title = value.split(' ')
  end
  def title
    @title.map.with_index { |word, index| @untitlized_words.include?(word) && index > 0 ? word : word.capitalize }.join(' ')
  end
end