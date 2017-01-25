class XmlDocument
  def initialize
  end

  def hello(options = {})
    # do we need to consider the case where
    # both a block and options hash are given?

    if block_given?
      text = yield
      return "<hello>#{text}</hello>"
    elsif options.empty?
      return "<hello/>"
    else
      start_tag = "<hello"
      end_tag = "/>"
      attributes = ""
    
      options.each do |key, value|
        attribute = "#{key}='#{value}'"
        attributes += "#{attribute} "
      end

      return "#{start_tag} #{attributes.rstrip!}#{end_tag}"
    end
  end

  def send(tag_name)
    "<#{tag_name}/>"
  end

  def method_missing(symbol)
    self.send(symbol)
  end
end
