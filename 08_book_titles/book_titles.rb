class Book
  attr_reader :title
  LITTLE_WORDS = %w(a the an a and in) 
  def title=(new_title)
    words = new_title.split(" ")
    words = [words[0].capitalize] + 
      words[1..-1].collect do |word|
        LITTLE_WORDS.include?(word) ? word : word.capitalize
      end
      @title = words.join(" ")
 
  end
  
end

