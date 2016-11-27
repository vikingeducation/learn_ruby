class Dictionary
	attr_reader :entries

	def initialize(entries = {})
		@entries = entries
	end

	def add(new_entries)
		if new_entries.class == String
			@entries[new_entries] = nil
		else
			@entries.update(new_entries)
		end
	end

	def keywords
		@entries.keys.sort	
	end

	def include?(keyword)
		@entries.key?(keyword)
	end

	def find(keyword)
		found_entries = {}
		@entries.each_key do |key|
			if key.start_with?(keyword)
				found_entries[key] = @entries[key]
			end
		end
		found_entries
	end

	def printable
		output = keywords.map do |keyword|
			"[#{keyword}] \"#{@entries[keyword]}\""
		end
		output.join("\n")
	end
end