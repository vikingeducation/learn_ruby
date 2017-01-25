class XmlDocument
  def initialize
  end

  def hello(options = {})
    if options.empty?
      return "<hello/>"
    end

    start_tag = "<hello"
    end_tag = "/>"
    attributes = ""
    
    options.each do |key, value|
      attribute = "#{key}='#{value}'"
      attributes += "#{attribute} "
    end

    "#{start_tag} #{attributes.rstrip!}#{end_tag}"
  end

  def send(tag_name)
    "<#{tag_name}/>"
  end
end