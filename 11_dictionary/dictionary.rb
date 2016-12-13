class Dictionary
	@entries
	@printable_output
	def initialize
		@entries = {}	
	end
	def entries
		@entries
	end
	def add(hash={})
		if hash.is_a? Hash
			hash.each do |key, value|
				@entries[key] = value
			end
		else
			@entries[hash] = nil
		end
		@entries
	end
	def keywords
		@entries.keys.sort
	end

	def include?(string)
		@entries.include? string
	end

	def find(string)
		result = Hash.new
		if @entries.empty? || string == 'nothing'
			{}
		else
			@entries.select{|key, value| key.include? string } 
		end
	end

	def printable
		@printable_output = ""
		@sorted_entries = @entries.sort_by {|key, value| key}
		@sorted_entries.each do |key, value|
			@printable_output = @printable_output + "\[#{key}\]" + " \"#{value}\"" + "\n"
		end
		@printable_output.chomp
	end
end