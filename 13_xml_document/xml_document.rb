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
    # block_content = yield if block_given?
    if block_given?
      block_content = yield
    end

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

end
