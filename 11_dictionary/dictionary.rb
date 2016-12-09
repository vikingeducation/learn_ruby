# TDD
# dictionary.rb
# Topics
#
# * Hash
# * Array
# * instance variables
# * regular expressions
#

class Dictionary
attr_accessor :entries, :keywords

  def initialize
    @entries = {}
  end

  # Add a word and definition to the has dictionary
  def add(item)
    
    # If there is no definition assign null
    hash_def = item.is_a?(Hash) ? item : {item => nil}

    hash_def.each do |word, definition|
      @entries[word] = definition
    end
  end


  def keywords
    @entries.keys.sort
  end

  def include?(word)
    @entries.key?(word)
  end

  def find(word)

    if(@entries.has_key?(word))
      @entries.select { |w,d| w == word} 
    else
      @entries.select { |key, value| key.start_with?(word)}
    end

  end

  def printable
    words_sorted = @entries.sort_by { |word, defn| word}
    words_sorted.map{ |word, defn| "[#{word}] \"#{defn}\"" }.join("\n")

    # sorted_keys = @entries.keys.sort

    # sorted_keys.each do | word|
    #   "[#{word}] \"#{defn}\""
    # end

    # @entries.each do |word, defn|
    #   output += "[#{word}] \"#{defn}\""
    # end
  end

end

