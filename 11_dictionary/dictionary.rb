class Dictionary

  attr_reader :entries

  def initialize (entries={})
    @entries = entries
    @keywords = []
  end

  def add (new_entry)

    if new_entry.class == Hash
      @entries.merge!(new_entry)
    else
      @entries[new_entry] = nil
    end

    keywords

  end

  def keywords
    @keywords = @entries.keys.sort
  end

  def include? (word)
    @keywords.include?(word)
  end

  def find (word)
    @entries.select{|k,v| k.start_with?(word)}
  end

  def printable

    sorted_entries = @entries.sort.to_h
    print_list = ""

    sorted_entries.each do |key, value| 
      print_list << %Q{[#{key}] "#{value}"\n}
    end

    return print_list.chomp

  end

end