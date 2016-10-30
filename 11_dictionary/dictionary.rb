require 'pry'

class Dictionary

  def initialize
    @entries = {}
  end  

  def entries
    @entries
  end

  def add(new_entries)
    if new_entries.class == String
      @entries[new_entries] = nil
    else
      new_entries.each do |word, definition|
        @entries[word] = definition
      end
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(keyword)
    return true if @entries.keys.include?(keyword)
    false
  end

  def find(string)
    if @entries.keys.grep(/#{string}/).empty?
      {}
    else
      key_array = []
      @entries.keys.each do |key|
        if key =~ /#{string}/
          key_array << key
        end
      end
      result = { }
      key_array.each do |key|
        result.store(key,@entries[key]) 
      end
      result
    end
  end

  def printable
    print_version = ""
    @entries.sort.each do |key, value|
      print_version += "[#{key}] \"#{value}\"\n"
    end
    print_version.chomp
  end

end

