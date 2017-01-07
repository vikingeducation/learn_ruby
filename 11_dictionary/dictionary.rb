class Dictionary

	def initialize
		@d = {}
	end

	def entries
		@d
	end

	def add(dict_entry)
		return @d[dict_entry] = nil if dict_entry.is_a? String
		dict_entry.each {|key, value| @d[key] = value}
		@d
	end

	def keywords
		@d.keys.sort
	end

	def include?(keyword)
		return @d.has_key? keyword unless @d.empty?
		false
	end

	def find(str)
		flag = {}
		unless @d.empty?
			flag = @d.select {|key, value| key.include?(str)}
			return flag
		end
		flag
	end

	def printable
		prints = @d.sort.map {|k, v| "[#{k}] \"#{v}\""}
		prints.join("\n")
	end

end