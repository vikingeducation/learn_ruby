class XmlDocument
  attr_accessor :indent, :indent_level

  def initialize(indent=false)
    @indent = indent
    @indent_level = 0
  end

  def line_break
    "\n" + "  " * self.indent_level
  end

  def method_missing(method, *args, &block)
    xml = ""
    attributes = args[0] || {}
    xml << "<"
    xml << "#{method}"
    attributes.each_pair do |k,v|
      xml << " #{k}='#{v}'"
      
    end
    xml << "/" unless block_given?
    xml << ">"

    if block_given?
      if indent
        self.indent_level += 1
        xml << line_break
      end

      xml << "#{yield}</#{method}>"
    end

    if indent
      if self.indent_level > 0
        self.indent_level -= 1
      end
      xml << line_break
    end

    xml
  end
end