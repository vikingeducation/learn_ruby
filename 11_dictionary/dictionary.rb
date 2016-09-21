class Dictionary

	attr_accessor :entries

	def initialize
		@entries = {}
	end

	def add(x, value = nil)
		if x.is_a?(Hash)
			x.each do |key, value|
				@entries[key] = value
			end
		else
			@entries[x] = nil
		end
	end

	def keywords
		@entries.keys.sort
	end

	def include?(x)
		@entries.keys.include?(x) ? true : false
	end

	def find(x)
		answer = {}
		@entries.each do |key, value|
			if key.include?(x)
				answer[key] = value
			end
		end
		answer
	end

	def printable
		final = @entries.sort.map {|key, value| "[#{key}] \"#{value}\""}
		final.join("\n")
	end
end