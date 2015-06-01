class Dictionary
  def initialize
    @entries={}
  end

  def entries
    @entries
  end

  def keywords
    @entries.map {|k, v| k}.sort
  end

  def add(input)
    case input
    when Hash then input.each {|k, v| @entries[k]=v}
    when String then @entries[input]=nil
    end
  end

  def include?(key)
    @entries.has_key?(key)
  end

  def find(key)
    @entries.select {|k, v| k.match(/^#{key}/)}
  end

  def printable
    p=""
    self.keywords.each {|k| p+=%Q{[#{k}] "#{@entries[k]}"\n}}
    p.chomp
  end
end