class Dictionary
  attr_accessor :entries, :keywords

  def initialize()
    @entries={}
    @keywords=[]
  end

  def add(entry)
    #if entry is a hash
    if entry.class==Hash
      @entries.merge!(entry)
      @keywords << entry.keys[0]
    #if entry is a string
    else
      @entries[entry]=nil
      @keywords << entry
    end
  end
  
  def include?(word)
    @entries.key?(word)
  end

  def find(word)
    letters=word.length
    result={}
    #add to result if beginning of key is the same as word
    @entries.each_pair{|key,value| result[key]=value if key[0,letters]==word}
    result
  end

  def keywords
    #returns array of keywords in alphabetical order
    @keywords.sort{|a,b| a.upcase<=>b.upcase}
  end

  def printable
    result=""
    #sort alpha
    self.keywords.each do |word|
      definition=@entries[word]
      result=result+"[#{word}] \"#{definition}\"\n"
    end
    #strip is necessary to remove the newline on the last line
    result.strip
  end

end