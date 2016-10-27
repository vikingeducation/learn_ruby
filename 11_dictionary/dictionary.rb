class Dictionary
  def initialize(defs = {})
    @defs = defs
  end

  def entries
   @defs
  end

  def add(defs)
    if defs.is_a?(String)
        @defs.merge!(defs => nil)
    else
        @defs.merge!(defs)
    end
  end

  def keywords
    @defs.keys.sort
  end

  def include?(key)
    @defs.has_key?(key)
  end

  def find(key)
    @defs.select { |word,defin| word.scan(key).join == key }
  end

  def printable
    defs_sorted = @defs.sort_by { |word, defin| word}
    defs_sorted.map{ |word, defin| "[#{word}] \"#{defin}\"\n" }.join.chomp
  end
end