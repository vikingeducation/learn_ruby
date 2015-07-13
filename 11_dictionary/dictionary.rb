class Dictionary

attr_accessor :entries

def initialize
  @entries = {}
end

def add (entry)
  if entry.class == Hash
    @entries.merge! entry
  else
    @entries[entry] = nil
  end
end


def keywords
  @entries.keys.sort
end


def include?(word)
  if @entries.keys.include? word
    true
  else
    false
  end
end


def find (prefix)
  results = {}
  num_letters = prefix.size

  @entries.keys.each do |word|
    if prefix == word[0..num_letters-1]
      results[word] = @entries[word]
    end
  end

  results
end


def printable
  print_string = ""
  @entries.sort.each do |word, definition|
    print_string += "[#{word}] \"#{definition}\"\n"
  end
  print_string.chomp
end


end