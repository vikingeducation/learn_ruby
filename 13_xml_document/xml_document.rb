class XmlDocument
  attr_accessor :level

  def initialize(line_breaks = false)
    @level = 0
    @line_breaks = line_breaks
  end

  def indent
    @line_breaks == true ? "  " * @level : ""
  end

  def new_lines
    @line_breaks == true ? "\n" : ""
  end

  def method_missing(string, args = {})
    end_line = new_lines
    result = "<"
    result << "#{string}"
    if block_given?
      result << ">" + end_line
      @level += 1
      result << indent + yield
      @level -= 1
      result << indent + "</#{string}>" + end_line
    else
      args.each { |key, value| result << " #{key}='#{value}'" }
      result << "/>" + end_line
    end
  end
end
