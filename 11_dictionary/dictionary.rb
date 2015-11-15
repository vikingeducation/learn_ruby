class Dictionary

	def initialize
		@entries = {}
		@keywords = []
	end

	def entries
		@entries
	end

	def add word_entry
		if word_entry.class == Hash
			word_entry.each {|key, value| @entries[key] = value}
		else
			@entries[word_entry] = nil
		end
		@keywords = @entries.keys 
	end

	def keywords
		@keywords.sort!
	end

	def include? word
		@keywords.include?(word)
	end

	def find word
		@entries.select {|key, val| key.include?(word)}
	end

	def printable
		result = ""
		@keywords.sort.each {|key| result << "[#{key}] \"#{@entries[key]}\"\n"}
		result.chomp
	end
	
end