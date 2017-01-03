class XmlDocument
  attr_accessor :indent, :indent_count

  def initialize(indent = false)
    @indent = indent
    @indent_count = 0
  end

  def hello(options = {})
    builder = ''
    builder = " name='#{options[:name]}'" if options[:name]

    if block_given?
      built_xml = ''
      if @indent
        indent_space = increase_indent
        built_xml = "#{indent_space}<hello>\n#{yield}#{indent_space}</hello>\n"
      else
        built_xml = "<hello>#{yield}</hello>"
      end

      return built_xml
    end

    "<hello#{builder}/>"
  end

  def goodbye
    builder = ''
    if block_given?
      built_xml = ''
      if @indent
        indent_space = increase_indent
        built_xml = "#{indent_space}<goodbye>\n#{yield}#{indent_space}</goodbye>\n"
      else
        built_xml = "<goodbye>#{yield}</goodbye>"
      end

      return built_xml
    end

    "<goodbye#{builder}/>"
  end

  def come_back
    builder = ''
    if block_given?
      built_xml = ''
      if @indent
        indent_space = increase_indent
        built_xml = "#{indent_space}<come_back>\n#{yield}#{indent_space}</come_back>\n"
      else
        built_xml = "<come_back>#{yield}</come_back>"
      end

      return built_xml
    end

    "<come_back#{builder}/>"
  end

  def ok_fine(options = {})
    builder = ''
    builder = " be='#{options[:be]}'" if options[:be]
    return "<ok_fine>#{yield}</ok_fine>" if block_given?

    if @indent
      indent_space = increase_indent
      return "#{indent_space}<ok_fine#{builder}/>\n"
    else
      return "<ok_fine#{builder}/>"
    end
  end

  def increase_indent
    indent_space = '  ' * @indent_count
    @indent_count = 1 + @indent_count
    return indent_space
  end

  def send(tag_name)
    "<#{tag_name}/>"
  end
end
