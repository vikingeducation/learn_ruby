# 11. Dictionary

class Dictionary

	attr_reader :entries

	def initialize
		@entries = {}
	end

	def add(entry)
		if entry.class == String
			@entries[entry] = nil
		else
			@entries = @entries.merge(entry)
		end

	end

	def keywords
		@entries.keys.sort
	end

	def include?(word)
		@entries.has_key?(word)
	end

	def find(prefix)
		@entries.select {|key, value| key.start_with?(prefix)}
	end

	def printable
		@entries.sort.map do |key, value|
			"[#{key}] \"#{value}\""
		end.join("\n")
	end

end