class Dictionary
  def initialize
    @dictionary = {}
  end

  def add(entry)
    if entry.is_a? String
      @dictionary.merge!(entry => nil)
    else
      @dictionary.merge!(entry)
    end
  end

  def entries
    @dictionary
  end

  def keywords
    @dictionary.keys.sort
  end

  def include?(keyword)
    @dictionary.has_key?(keyword)
  end

  def find(prefix)
    finder = {}
    @dictionary.keys.each do |key|
      if key.start_with?(prefix)
        finder.merge!(key => @dictionary[key])
      end
    end
    finder
  end

  def printable
    print = ""
    @dictionary.sort.to_h.each do |key, val|
      print += "[#{key}] \"#{val}\"\n"
    end
    print.rstrip!
  end

end
