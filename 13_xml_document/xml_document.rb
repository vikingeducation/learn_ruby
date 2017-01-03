class XmlDocument
  attr_accessor :indent, :indent_count

  def initialize(indent = false)
    @indent = indent
    @indent_count = 0
  end

  def hello(options = {}, &block)
    builder = " name='#{options[:name]}'" if options[:name]

    return xml_builder('hello', &block) if block_given?

    "<hello#{builder}/>"
  end

  def goodbye(_options = {}, &block)
    return xml_builder('goodbye', &block) if block_given?

    "<goodbye/>"
  end

  def come_back(_options = {}, &block)
    return xml_builder('come_back', &block) if block_given?

    "<come_back/>"
  end

  def ok_fine(options = {}, &block)
    builder = " be='#{options[:be]}'" if options[:be]
    return xml_builder('ok_fine', &block) if block_given?

    if @indent
      indent_space = increase_indent
      return "#{indent_space}<ok_fine#{builder}/>\n"
    else
      return "<ok_fine#{builder}/>"
    end
  end

  def xml_builder(caller)
    built_xml = ''
    if @indent
      indent_space = increase_indent
      built_xml = "#{indent_space}<#{caller}>\n#{yield}#{indent_space}</#{caller}>\n"
    else
      built_xml = "<#{caller}>#{yield}</#{caller}>"
    end

    built_xml
  end

  def increase_indent
    indent_space = '  ' * @indent_count
    @indent_count = 1 + @indent_count
    indent_space
  end

  def send(tag_name)
    "<#{tag_name}/>"
  end
end
