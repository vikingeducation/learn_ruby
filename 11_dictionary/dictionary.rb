#Creates your very own dictionary!
#Add words and definitions, search, and print them out. 

class Dictionary

  attr_accessor :entries 

  def initialize(entries = {})
    @entries = entries
  end

  def add(entry)

    if entry.class == String
      entry = {entry => nil}
    end

    entry.each do |key, value|
      @entries[key] = value
    end
  end

  def keywords
    keys = []

    @entries.each do |key, value|
      keys << key
    end
    keys.sort
  end

  def include?(key)
    @entries.keys.include?(key)
  end

  def find(prefix)
    found = {}

    @entries.each do |key, value|
      if key =~ /^#{prefix}/
        found[key] = value
      end
    end
    found
  end

  def printable
    print_out = []
    
    @entries.sort.collect do |key, value|
      print_out <<  "[#{key}] \"#{value}\""
    end
    print_out.join("\n")
  end
end