class Dictionary
	attr_accessor :entries

	#creates empty hash for entries
	def initialize
		@entries = {}
	end

	#adds entries with key and value(if given)
	def add(input)
		if input.class == String
			@entries[input] = nil
		else
			@entries.merge!(input)
		end
	end

	#returns keys alphabetically
	def keywords
		@entries.keys.sort
	end

	#checks whether or not a given key is in @entries
	def include?(word)
		if @entries.keys.include?(word)
			true
		else
			false
		end
	end

	#finds keys and parts of keys and returns all relevant entries
	def find(search)
		results = {}
		@entries.each do |key, value|
			if key.start_with? search
				results[key] = value
			end
		end
		results
	end

	#sorts and prints @entries in [key] "value" format
	def printable
		printed = @entries.sort.map do |key,value|
			"[#{key}] \"#{value}\""
		end
		printed.join "\n"
	end

end