class Dictionary

  def initialize
    @dict = Hash.new
  end

  def entries
    #@dict ||= {}  #@dict is only created if it doesn't already exist
    @dict
  end

  def add(entry)
    if entry.is_a?(String)
      @dict[entry] = nil
    else
      entry.each do |name, definition| 
        @dict[name] = definition 
      end
    end
  end

  def include?(keyword)
    if @dict.keys.include?(keyword)
      true
    else
      false
    end
  end

  def keywords
    @dict.keys.sort
  end

  def find(search_word)
    answer = {}
    @dict.each do |name, definition|
      if name[0... search_word.length] == search_word[0... search_word.length]
        answer[name] = definition
      end
    end
    return answer
  end

  def printable
    printable_array = @dict.map do |name, definition|
      %Q{[#{name}] "#{definition}"}
    end
    return printable_array.sort.join("\n")
  end

end