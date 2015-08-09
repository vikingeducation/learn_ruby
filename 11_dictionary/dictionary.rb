class Dictionary
	attr_accessor :entries

	def initialize
		@entries = {}
	end

	def add(entries)
		if entries.is_a?(String)
			@entries[entries] = nil
		elsif entries.is_a?(Hash)
			entries.each do |key, value|
				@entries[key] = value
			end
		end
	end

	def keywords
		@entries.keys.sort
	end

	def include?(keyword)
		keywords.include?(keyword)
	end

	def find(word)
		results = {}
		@entries.each do |key, value|
			results[key] = value if key.match(/#{word}/)
		end
		results
	end

	def printable
		s = ''
		@entries.sort.each_with_index do |entry, i|
			s += "[#{entry[0]}] \"#{entry[1]}\""
			s += "\n" if i != @entries.length - 1
		end
		s
	end
end