class Dictionary

  def initialize
    @dic = {}
  end

  def entries
    @dic
  end

  def add(entry)
    if entry.is_a?(Hash)
      @dic.merge!(entry)
      #add key only
    elsif entry.is_a?(String)
      @dic.merge!({entry => nil})
    end
  end

  def keywords
    @dic.keys.sort!
  end

  def include?(key)
    @dic.key?(key)
  end

  def find(string)
    results = {}
    @dic.each do |key,val|
      if key.index(string)
        #if the key contains the search string, add k-v pair to results
        results.merge!({key => val})
      end
    end
    results
  end

  def printable
    hash = entries.sort
    result = ""
    hash.each do |key,val|
    result << "[#{key}] \"#{val}\"\n"
    end
    result

  end

end
