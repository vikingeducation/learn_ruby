
class Dictionary
    def initialize
        @dic = {}
    end

    def add( new_entries )
        if new_entries.class == Hash
            new_entries.each do |key, value|
                @dic[key] = value
            end
        end
        if new_entries.class == String
            @dic[new_entries] = nil
        end
    end

    def entries
        @dic
    end

    def keywords
        @dic.keys.sort
    end

    def include? ( key )
        @dic.keys.include? key
    end

    def find( prefix )
        @dic.select { |key, value|  key[0...prefix.length] == prefix }
    end

    def printable
        @dic.keys.sort.each { |key| @dic[key] = @dic.delete key }
        ret_str = ""
        @dic.each do |key, value|
            ret_str << "[#{key}] \"#{value}\"\n"
        end
        ret_str.strip
    end
end
