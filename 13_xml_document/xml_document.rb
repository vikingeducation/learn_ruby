class XmlDocument

    def initialize indent=false
        @indent = indent
    end

    def hello attributes={}
        tag = "<hello"

        attributes.each do |key, value|
            tag += " #{key.to_s}='#{value}'"
        end

        if block_given?
            if @indent
                tag += ">\n"
                tag += yield + "\n"
                tag += "</hello>\n"
            else
                tag += ">"
                tag += yield
                tag += "</hello>"
            end
        else
            tag += "/>"
        end
    end

    def goodbye attributes={}
        if @indent
            tag = "  <goodbye"
        else
            tag = "<goodbye"
        end

        attributes.each do |key, value|
            tag += " #{key.to_s}='#{value}'"
        end

        if block_given?
            if @indent
                tag += ">\n"
                tag += "  " + yield + "\n"
                tag += "  </goodbye>"
            else
                tag += ">"
                tag += yield
                tag += "</goodbye>"
            end
        else
            tag += "/>"
        end
    end

    def come_back attributes={}
        if @indent
            tag = "  <come_back"
        else
            tag = "<come_back"
        end

        attributes.each do |key, value|
            tag += " #{key.to_s}='#{value}'"
        end

        if block_given?
            if @indent
                tag += ">\n"
                tag += "      " + yield + "\n"
                tag += "    </come_back>"
            else
                tag += ">"
                tag += yield
                tag += "</come_back>"
            end
        else
            tag += "/>"
        end
    end

    def ok_fine attributes={}
        if @indent
            tag = "<ok_fine"
        else
            tag = "<ok_fine"
        end

        attributes.each do |key, value|
            tag += " #{key.to_s}='#{value}'"
        end

        if block_given?
            if @indent
                tag += ">\n"
                tag += "        " + yield + "\n"
                tag += "        </ok_fine>"
            else
                tag += ">"
                tag += yield
                tag += "</ok_fine>"
            end
        else
            tag += "/>"
        end
    end


    def send tag_name
        "<#{tag_name}/>"
    end

end
