class Dictionary
	def initialize
		@dic = {}
	end

	def entries
		@dic
	end

	def add new_entry
		new_entry.is_a?(Hash) ? @dic.merge!(new_entry) : @dic[new_entry] = nil
	end

	def keywords
		@dic.keys.sort
	end

	def include? key
		@dic.keys.include?(key)
	end

	def find word
		@dic.keys.join(" ").include?(word) ? @dic.select{|k, v| k.include?(word)} : {}
	end

	def printable
		result = ""
		keywords.each {|k| result += "[#{k}] \"#{@dic[k]}\"\n" }
		result.strip[0..-1]
	end
end