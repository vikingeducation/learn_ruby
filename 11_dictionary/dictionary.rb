class Dictionary
	def initialize()
		@entries = {}
	end

	def entries
		@entries
	end

	def add(hash)
		return @entries[hash.keys[0]] = hash.values[0] if hash.class == Hash
		return @entries[hash] = nil
	end

	def keywords
		@entries.keys.sort
	end

	def include?(key)
		return true if @entries.include?(key)
		return false
	end

	def find(item)
		return @entries.select {|key, value| key[0..item.length - 1] == item}
	end

	def printable
		all = ""
		@entries.sort.each do |key, value|
			all += "[#{key}] \"#{value}\"\n"
		end
		p all.chomp
	end
end