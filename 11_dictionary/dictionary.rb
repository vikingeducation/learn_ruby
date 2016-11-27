class Dictionary

def initialize
  @entries = {}
end

def entries
  @entries
end

def add(entry, value=nil)
  if entry.is_a?Hash
    entry.each do |word, definition|
      @entries[word] = definition
    end
  elsif entry.is_a?String
    @entries[entry] = nil
  end
end

def keywords
  @entries.keys.sort
end

def include?(word)
  keywords.include?(word)
end

def find(word)
  result = {}
  @entries.each do |key, value|
    if key.start_with?(word)
      result[key] = value
    end
  end
  result
end

def printable
  print = @entries.sort.map do |key, value|
    "[#{key}] \"#{value}\""
  end
  print.join"\n"
end


#class ends here
end