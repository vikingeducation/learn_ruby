class Book
  def initialize
    @title = ''
    @no_caps = ['a', 'an', 'of', 'in', 'and', 'the', 'over']
  end
  
  def title
    @title
  end
  
  def title=(value)
    @title = value.split(' ').map.with_index {|word, i| (@no_caps.include?(word) && i > 0) ? word : word.capitalize }.join(' ')
  end
end


