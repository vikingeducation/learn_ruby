class Dictionary 
	attr_accessor :entries

	def initialize
		@entries = {}
	end

	def add(kvpair)
		if kvpair.is_a? String
			@entries[kvpair] = nil
		else
			@entries[kvpair.keys[0]] = kvpair.values[0] 
		end
	end

	def keywords 
		@entries.keys
	end

	def include?(keyword)
		return true if @entries.keys.include?(keyword)
		return false
	end

	def find(str)
		@entries.select do |k, v|
			k[0..str.length-1] == str
		end
	end
end