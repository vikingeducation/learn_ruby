class Dictionary

	def entries=(hash)
		@entries = hash
	end

	def entries
		@entries
	end

	def initialize
		@entries = {}
	end

	def add(new_entry)
		if new_entry.class == String
			@entries[new_entry] = nil
		else
			new_entry.each do |key, value|
				@entries[key] = value
			end
		end
	end

	def keywords
		@entries.keys.sort
	end

	def include?(keyword)
		@entries.keys.include?(keyword)
	end

	def find(keyword)
		matched_hash = {}
		@entries.keys.each do |key|
			if key.include?(keyword)
				matched_hash[key] = @entries[key]
			end
		end
		matched_hash
	end

	def printable
		printable_array = []
		@entries.each do |keyword, definition|
			printable_array << "[#{keyword}] \"#{definition}\""
		end
		printable_array.sort.join("\n")
	end

end