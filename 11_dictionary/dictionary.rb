class Dictionary
	attr_reader :entries
	def initialize
		@hash = {}
	end

	def add(defs)
		defs.each do |word, definition|
			@hash[word] = definition
		end
		
	end

	def entries
		@hash
	end

	def keywords
		@hash.keys
	end
end

