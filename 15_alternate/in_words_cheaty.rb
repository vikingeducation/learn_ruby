#this is the cheaty version using the to words gem

class Fixnum
  require 'to_words'
  def in_words
    words = self.to_words.downcase.split
    blank = []
    words.each do |word|
      unless word == "and" || word == ","
        blank.push(word)
      end
    end
    return blank.join(" ") #remove commas and ands
  end
end