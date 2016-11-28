class XmlDocument

def initialize(indent=false)
  @indent = indent
  @indent_level = 0
end

def method_missing(method_name, *input, &block)
  input = input[0] || {}
  xml = ""
  xml << ("  " * @indent_level) if @indent
  xml << "<#{method_name}"
  input.each do |key, value|
    xml << " #{key}='#{value}'"
  end
  if block_given?
    xml << ">"
    xml << "\n" if @indent
    @indent_level += 1
    xml << yield
    @indent_level -= 1
    xml << ("  " * @indent_level) if @indent
    xml << "</#{method_name}>"
    xml << "\n" if @indent
  else
    xml << "/>"
    xml << "\n" if @indent
  end
  xml
  end
  
end