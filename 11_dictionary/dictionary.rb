
class Dictionary
  def initialize
		@dict = Hash.new
  end

  def entries
      @dict
  end

  def add(hash = {})
  	  if hash.is_a?(Hash)
  	      #@dict[hash.keys[0]] = hash.values[0]
  	      @dict = @dict.merge(hash)
  	   else
  	      @dict["#{hash}"] = nil 
  	   end      
  end
  
  def keywords
      @dict.keys.sort
  end 

  def include?(key_word)
      @dict.include?(key_word)
  end   

  def find(key_word)
      @dict.select {|key,val| /^#{key_word}/ =~ key}
  end 

  def printable
  	  str = ""
      @dict.sort_by {|key,val| key}.each {|key,val| str += "[#{key}] \"#{val}\"\n"}
      str.chomp
  end 

end