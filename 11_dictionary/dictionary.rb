class Dictionary
  def initialize
    @d = {}
  end
  
  def entries
    @d
  end

  def add(entered)
    
    entered.is_a?(String) ? @d[entered] = nil : entered.each {|key, value| @d[key] = value}
  end

  def keywords
    @d.keys.sort
   end

  def include? (word)
    @d.has_key?(word)
  end

   def find(search)
      
      @d.select {|name, definition| name.match(/^#{search}/)}

  end

  def printable
    @d.map{|name, definition| %Q{[#{name}] "#{definition}"} }.sort.join("\n")
  end

end

