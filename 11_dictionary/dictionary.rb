class Dictionary
  attr_accessor :entries

  def initialize (options={})
    @entries=options
  end
  
   

  def add (options={})
    @entries= (options.is_a? String) ? @entries.merge(options => nil) : @entries.merge(options) 
    
  end

  def keywords
    @entries.keys.sort
  end

  def include?(key)
    @entries.keys.include?(key)
  end

  def find(key)
    @entries.select do |k,v| 
      k.start_with?(key)
    end
  end

  def printable
    a=[]
    @entries.sort.each do |k,v|
      a<<"[#{k}] \"#{v}\""
    end
    a.join("\n")
  end

end