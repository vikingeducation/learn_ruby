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
		k = @entries.keys
		results = []
		k.each do |i|
			if i[0..str.length] === str
				results << i
			end
		end
		return results if results.empty?
		@entries.select {|k,v| k == results[0]}
	end
end