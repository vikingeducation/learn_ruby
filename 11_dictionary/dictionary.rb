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
    @entries.keys
  end

  def include?(word)
    @entries.key?(word)
  end

  def find(word)
    if(@entries.has_key?(word))
    # Returns the key-value as an array which has to be forced back to a has value
      # Hash[*@entries.assoc(word)]
      @entries.select { |w,d| w == word} 

      # {word => @entries[word]}
    else
      return {}
    end

  end

end

