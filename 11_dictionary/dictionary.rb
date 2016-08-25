class Dictionary
    def initialize
        @entries = {} 
    end
    
    def entries
       @entries 
    end
    
    def add(entry)
      case
        when entry.class == Hash
          key = nil
          value = nil
          entry.each_key {|x| key = x}
          entry.each_value {|y| value = y}
          @entries[key] = value
          when entry.class == String
            @entries[entry] = nil
      end
    end
    
    def include?(key)
       entries.each_key do |x|
          return true if x == key 
       end
       return false
    end
    

    def find(key)

      keys = []
      entries.each_key do |x|
        if /#{key}/.match(x)
          puts x
          keys << x 
        end
      end
    
      if keys.length > 0
        output = Hash.new
        keys.each do |x|
          output[x] = @entries[x]
        end
        output
      else
      {}
      end
    end
  
   def keywords
     @entries.keys.sort
   end
   
   def printable
    output = ""
    self.keywords.each do |key|
      output += "[#{key}] \"#{entries[key]}\"\n"
    end
    output.chomp
   end
    
    
end

