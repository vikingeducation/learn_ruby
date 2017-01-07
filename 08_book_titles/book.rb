CONJUNCTIONS = ["and","or","but","yet","for","nor","so","as"]
PREPOSITIONS = ["in","on","over","under","by","at","of"]
ARTICLES = ["a","an","the"]
class Book
	def title=(new_title) 
		ignore = CONJUNCTIONS+PREPOSITIONS+ARTICLES
		@title = new_title.split(" ").each_with_index.map {|item,index| (ignore.include?(item.downcase) && index > 0)? item : item.capitalize}.join(" ")
	end

	def title
	  @title
	end
end	
