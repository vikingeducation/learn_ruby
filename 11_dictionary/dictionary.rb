class Dictionary
  def initialize 
    @entries = {}
    @keywords = []
  end

  def entries
    @entries
  end

  def keywords
    @keywords
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
end