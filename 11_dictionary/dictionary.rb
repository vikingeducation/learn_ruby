class Dictionary
  attr_accessor :entries

  def initialize (entries = {})
    @entries = entries
  end

  def add(words={})
    if words.is_a? String
      entries[words] = nil
    else
      words.each_pair do |word, definition|
        entries[word] = definition
      end
    end
  end

  def keywords
    entries.keys.sort
  end

  def include?(word)
    entries.has_key?(word)
  end

  def find(word)
    return entries.select{|k,v| k.start_with? word} || {}
  end

  def printable
    printable_list = ""
    entries.sort.each do |value|
      printable_list << "[#{value[0]}] \"#{value[1]}\"\n"
    end

    printable_list.strip
  end
end
