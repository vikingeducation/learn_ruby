class Dictionary
    
    def initialize
        @entries = {}
        @keywords = []
        @definitions = []
    end
    
    def entries
        @entries
    end
    
    def add(keyval = {})
        
        if (keyval.is_a? String) #check if a proper hash was passed in or just a string/word
            @entries[keyval] = nil
            @keywords.push(keyval)
        else
            @keywords += keyval.keys
            @definitions += keyval.values
            
            @keywords.each_with_index do |key, i|
                @entries[key] = @definitions[i]
            end
        end
        
        #@entries.merge!(keyval)
    end
    
    def keywords
        @keywords.sort
    end
    
    def include?(key)
        @keywords.include?(key)
    end
    
    def find(word)
        #@entries.assoc(word)
        @entries.select{ |key, val| key.include?(word) }
    end
    
    def printable
        str = []
        
        @entries.each_with_index do |(key, val), i|
            str.push("[#{key}] \"#{val}\"")
        end
        
        str.sort.join("\n")
    end
end