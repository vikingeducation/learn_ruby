class Dictionary 
  def initialize(dict = {})
    @dict = dict
  end

  def entries()
    return @dict
  end

  def add(command)
    if command.kind_of?(Hash)  == true
      command.each do |word, definition|
        @dict[word] = definition
      end
    else
      @dict = Hash[command => nil]

    end
  end

  def keywords()
    return @dict.keys.sort
  end

  def include?(input)
    return @dict.key?(input)
  end

  def find(input) #I have no idea wtf is going on here
    found = {}
    @dict.each do |key, value|
      isin = key.to_s.include? input
      if  isin == true
        found[key] = value
      end
    end
    return found
  end

  def printable
    str=[]
    key=@dict.keys.sort
    key.each do |element|
      @dict.each do |k,v|
        if k == element
          str << "[#{k}] \"#{v}\""
        end
      end
    end
    return str.join("\n")
  end
end