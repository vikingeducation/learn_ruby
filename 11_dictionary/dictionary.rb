class Dictionary
	
	attr_reader :entries, :keywords
	def initialize
		@entries = Hash.new()
		@keywords = []
	end
	
	def add(entry)
	  if String === entry
	  	@keywords << entry
	  	@entries.store(entry, nil)
	  else
		  @entries.merge!(entry)
		  @keywords << entry.keys[0]
	  end
	  @keywords.sort!
	end
	
	def include?(keyword)
	  @keywords.include?(keyword)
	end
	
	def find(word)
		# include?(word) ? match_it(word) : {}
		matches = {}
	  @keywords.each do |keyword|
	    if keyword.start_with?(word)
	      matches[keyword] = @entries[keyword]
	    end
	 end
	 return matches
	end

  def printable
    output = []
    keywords.each do |keyword|
      output << "[#{keyword}] \"#{entries[keyword]}\""
    end
    output * "\n"
  end
	    
end