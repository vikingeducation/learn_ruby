class Book

attr_accessor :title

  def title   

    dictionary = ["in", "of", "and", "or", "the", "over", "to", "the", "a", "an"]

    new_string = @title.split(" ").map{|word| dictionary.include?(word) ? word : word.capitalize}.join(" ")

    new_string.slice(0,1).capitalize + new_string .slice(1..-1) 
  end

  

end