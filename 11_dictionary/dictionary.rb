# Dictionary
class Dictionary 

	# Read & write access
	attr_accessor :entries

	# Constructor
	def initialize
		@entries = {}
	end

	# Add entries
	def add(entry)
		entry = { entry => nil } if entry.is_a?(String) # only key provided, as string
		@entries = @entries.merge(entry) # combine hashes together 
	end

	# Collect keys in array
	def keywords
		@entries.keys.sort
	end

	# Check if key is present 
	def include?(key) 
		@entries.has_key?(key)
	end

	# Find all keys with "word" inside it (fi should get entries for fish, fiend, figure)
	def find(word)
		@entries.select { |key, value| key.include?(word) }
	end

	# Printable format 
	def printable
		print_form = ""
		entry_count = 0
		@entries.sort.each do |key, value|
			print_form += "[#{key}] \"#{value}\""
			entry_count += 1
			print_form += "\n" unless entry_count == @entries.length
		end
		print_form
	end

end

