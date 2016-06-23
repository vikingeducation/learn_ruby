class Book

  attr_accessor :title

  # def initialize(title = '')
  #   @title = title
  # end

  def title
    exclusions = ['and', 'in', 'the', 'of', 'a', 'an']
    array = []
    @title.split(' ').each_with_index { |word, index| exclusions.include?(word) && index != 0 ? array<<word : array << word.capitalize }
    array.join(' ')
  end


  


end