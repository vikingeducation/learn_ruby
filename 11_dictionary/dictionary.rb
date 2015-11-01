class Dictionary
  def initialize 
    @entries = {}
    @keywords = []
  end

  def entries
    @entries
  end

  def keywords
    @keywords.sort
  end

  def add(entry)
    if entry.class == Hash
      @entries.merge!(entry)
      @keywords << entry.keys[0]
    elsif entry.class == String
      entry_hash = {entry => nil}
      @entries.merge!(entry_hash)
      @keywords << entry_hash.keys[0]
    end
  end

  def include?(keyword)
    @keywords.include?(keyword)
  end

  def find(find_term)
    terms_found = {}
    @keywords.each do |keyword|
      if keyword.include?(find_term)
        terms_found.merge!({keyword => @entries[keyword]})
      end
    end
    return terms_found
  end

  def printable
    text = ""
    keywords.each do |keyword|
      text << "[#{keyword}] \"#{@entries[keyword]}\"\n"
    end
    return text.chomp
  end
end