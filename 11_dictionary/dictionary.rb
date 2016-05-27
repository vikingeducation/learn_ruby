class Dictionary

    def initialize
        @dict = {}
    end

    def entries
        @dict
    end

    def printable
        string = ""

        keywords.each do |key|
            string += %{[#{key}] "#{@dict[key]}"\n}
        end

        string.strip
    end

    def keywords
        @dict.keys.sort
    end

    def add addition
        if addition.class == String
            return @dict[addition] = nil
        end

        @dict[addition.keys[0]] = addition.values[0]
    end

    def include? key
        return true if @dict.has_key?(key)
        return false
    end

    def find string
        found = {}

        @dict.each do |key, value|
            found[key] = value if key.start_with?(string)
        end

        found
    end

end
