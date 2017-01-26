class XmlDocument
  attr_accessor :content

  def initialize(to_indent = false)
    @to_indent = to_indent
    @content = ""
  end

  def send(tag_name, options = {}, &block)
    block_content = ""
    attributes = ""

    # handle block if a block is provided
    block_content = yield if block_given?

    # build attributes string
    unless options.empty?
      options.each do |key, value|
        attributes += "#{key}='#{value}' "
      end

      attributes.rstrip!
    end

    # no block and no attributes provided
    if block_content.empty? && attributes.empty?
      return "<#{tag_name}/>"
    end

    # block provided, with no attributes
    if !block_content.empty? && attributes.empty?
      return "<#{tag_name}>#{block_content}</#{tag_name}>"
    end

    # no block provided, but attributes provided
    if block_content.empty? && !attributes.empty?
      return "<#{tag_name} #{attributes}/>"
    end

    # both block and attributes provided
    if !block_content.empty? && !attributes.empty?
      return "<#{tag_name} #{attributes}>#{block_content}</#{tag_name}>"
    end
  end

  def method_missing(symbol, options = {}, &block)
    @content = send(symbol, options, &block)
  end

  def indent_content(content)
    indented_content = ""
    indentation_hash = build_indentation_hash(content)
    elements = content.gsub(">", ">,").split(",")

    # go through each element, indent it accordingly based on its
    # assigned indentation level, then add it to the output
    elements.each do |element|
      indentation_level = indentation_hash[element.gsub(/[<>\/]/, "")]
      indented_element = (" " * indentation_level) + element + "\n"
      p indented_element
      indented_content += indented_element
      p indented_content
    end

    indented_content
  end

  def build_indentation_hash(content)
    indentation_hash = {}
    indentation_level = 0
    elements = content.gsub(">", ">,").split(",")

    # go through each element, and build a hash with each element
    # as the key, and the level of indentation as the value
    elements.each do |element|
      element.gsub!(/[<>\/]/, "")

      if indentation_hash.has_key?(element)
        next
      else
        indentation_hash[element] = indentation_level
        indentation_level += 1
      end
    end

    indentation_hash
  end
end


test_string = "<hello><goodbye><come_back><ok_fine be='that_way'/></come_back></goodbye></hello>"
xml = XmlDocument.new(true)
puts xml.indent_content(test_string)
