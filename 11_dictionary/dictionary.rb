class Dictionary

  def initialize
    @dict = {}
  
  end

  attr_accessor :dict


  def entries
    @dict
  end

  def keywords
    @dict.keys.sort
  end

  def add(entry)
    entry.class == Hash ? @dict[entry.keys.join] = entry.values.join : @dict[entry] = nil
  end

  def printable
    results = ""
    counter = 0
    while counter < @dict.length - 1
      results += "[#{@dict.keys.sort[counter]}] \"#{@dict[@dict.keys.sort[counter]]}\"\n"
      counter += 1
    end
    results += "[#{@dict.keys.sort[counter]}] \"#{@dict[@dict.keys.sort[counter]]}\""
  
  end

  def include?(entry)
    @dict.keys.include?(entry)
  end

  def find(word)
    matches = {}
    @dict.keys.each do |key|
      if word == key[0..word.length - 1]
        matches[key] = @dict[key]
      end
    end
    matches

  end


end