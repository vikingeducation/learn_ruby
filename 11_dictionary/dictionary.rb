class Dictionary
	attr_reader :entries

	def initialize
		@entries = {}
	end

	def add(entry)
		if entry.class == Hash
			@entries.merge!(entry)
		else
			@entries[entry] = nil
		end
	end

	def keywords
		@entries.keys.sort
	end

	def include?(keyword)
		if @entries.keys.include? keyword
			true
		else
			false
		end
	end

	def find(input)
		results = {}
		@entries.each_key do |key|
			if /#{input}/ =~ key
				results[key] = @entries[key]
			end
		end
		results
	end

	def printable
		output = ""
		keys = @entries.keys.sort
		keys.each do |key|
			output << "[#{key}] \"#{@entries[key]}\"\n"
		end
		output.chomp("\n")
	end
end

# @d = Dictionary.new
# @d.add('zebra' => 'African land animal with stripes')
# @d.add('fish' => 'aquatic animal')
# @d.add('apple' => 'fruit')
# @d.printable