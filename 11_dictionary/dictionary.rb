class Dictionary
	def initialize
		@d = {}
	end

	def add(book)
		if book.class == Hash
			@d.merge!(book)
		else
			@d[book] = nil
		end
	end

	def include?(str)
		@d.has_key?(str)
	end

	def find(str)
		@d.select { |key, value| key.include? str}
	end

	def printable
		print = ''
		@d = @d.sort_by { |key, value| key}
		@d.each do |key, value|
			print += "[#{key}] \"#{value}\"\n"
		end
		print.chomp
	end

	def keywords
		@d.keys.to_a.sort
	end

	def entries
		@d
	end
end