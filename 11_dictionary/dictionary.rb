class Dictionary

  def initialize
    @entries = {}
  end

  def entries
    @entries
  end

  def add(arg)
    if arg.is_a?(Hash)
      @entries.merge!(arg)
    else
      @entries[arg] = nil
    end
  end

  def keywords
    @entries.keys.sort
  end


  def include?(key)
    @entries.key?(key)
  end

  def find(key)
    @entries.empty? ? {} : @entries.select {|word| word.match(/#{key}/)}
  end


  def printable
    @entries.sort.map {|key,value| "\[#{key}\] \"#{value}\"\n"}.join.chomp
  end

end
