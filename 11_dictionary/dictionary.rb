class Dictionary
	attr_accessor :entries

	def initialize
		@entries = Hash.new(nil)
	end

	def add(entry)
		@entries.merge!(entry) if entry.is_a? Hash
		@entries[entry] = nil if entry.is_a? String
	end

	def keywords
		@entries.keys.sort
	end

	def include?(word)
		@entries.include?(word)
	end

	def find(key)
		@entries.select { |word, definition| word.match(key) }
	end

	def printable
		keywords.map do |keyword|
			"[#{keyword}] \"#{@entries[keyword]}\"\n"
		end.join.chomp
	end
end