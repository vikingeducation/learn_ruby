class XmlDocument
  #still unsure what attr_accessor does..
  attr_accessor :indent

  def initialize(indent = false)
    @tag = {}
    @indent = indent
    @indent_num = 0
  end

  def method_missing(input, *args, &block)
    #print "input does : #{input} \nargs does : #{args} \nblock does: #{block}\n"
    @indent ? str = ("  " * @indent_num) : str = ""
    str << "<" + input.to_s
    @tag = args[0]
    @tag.each do |key, value| 
      str << " #{key}='#{value}'"
    end unless @tag.nil?
    if block
      str << ">"
      str << "\n" if @indent
      @indent_num += 1
      str << block.call
      @indent_num -= 1
      str << ("  " * @indent_num) if @indent
      str << "</#{input}>"
    else
      str << "/>"          
    end
    str << "\n" if @indent
    return str 
  end
end