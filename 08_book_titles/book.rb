# class Book

# 	attr_accessor :title
	
# 	def title=(some_word)
# 		# word_arr = some_word.split(' ')

# 		# word_arr.map do |e|
# 		# 	e[0].capitalize
# 	@title = some_word.capitalize
# 	end

# end

class Book
  def title
    @title
  end

  def title=(title)
  special_words = %w(and in the of a an)
  formatted_title = []

    @title = title.split.each_with_index do |w,i|
      case 
      when i == 0
        formatted_title << w.capitalize

      when i > 0 && !special_words.include?(w)
        formatted_title << w.capitalize

      when special_words.include?(w)
        formatted_title << w
      end
    end

  @title = formatted_title.join(" ")
  end
end