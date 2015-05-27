 class Dictionary
  
  def initialize
    @entries = {}
  end

  def entries
    @entries
  end

  def add(key_value)
    key_value = {key_value => nil} if key_value.class == String  
    @entries.merge!(key_value)
  end

  def keywords
    @entries.keys.sort!
  end

  def include?(keyword)
    # binding.pry
    @entries.keys.include?(keyword)
  end

  def find(word)
    results = {}
    if @entries == {}
      results
    else
      @entries.each do |key, value|
        if key =~ /^#{word}/  #copied line. Don't understand =~
          results[key] = value
        end
      end
      results
    end
    
    # binding.pry
  end

  # looked at other code for help on this one.
  def printable
    printstring = ""
    @entries.keys.sort.each do |keyword|
      printstring << "[#{keyword}] \"#{@entries[keyword]}\"\n"
    end
    printstring.strip
  end

end


