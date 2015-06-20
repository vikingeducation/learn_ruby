class XmlDocument

  def initialize(indents=false)
    @indents = indents
    @level = 0
    @neg_levels = 0
  end

  def hello(opts=nil, &block)
    named_tag("hello", opts, block)
  end

  def goodbye(opts=nil, &block)
    named_tag("goodbye", opts, block)
  end

  def come_back(opts=nil, &block)
    named_tag("come_back", opts, block)
  end

  def ok_fine(opts=nil, &block)
    named_tag("ok_fine", opts, block)
  end

  def named_tag(name, opts, block)
    tag = "<#{name}"
    if opts
      opts.each do |key, value|
        tag += " #{key}=\'#{value}\'"
      end
    end
    tag += "/>"

=begin

    # The solution before I had to incorporate indentation.
    if block
      middle_text = block.call
    end

    if middle_text
      tag = tag[0..-3] + ">" + middle_text + "</#{name}>"
    end

    return tag
=end

    # It was a lot simpler before I had to do the indentation.
    # This solution, while ugly, should work on other levels of spacing.
    if block
      middle_text = ""
      if @indents
        @level += 1
        middle_text += "\n"
        middle_text += " " * (2 * @level)
        middle_text += block.call
      else
        middle_text += block.call
      end
    end

    if middle_text
      puts @level, @neg_levels
      if @indents
        @neg_levels += 1
        tag = tag[0..-3] + ">" + middle_text + "\n" + (" " * (2 * (@level - @neg_levels))) + "</#{name}>"
      else
        tag = tag[0..-3] + ">" + middle_text + "</#{name}>"
      end
    end

    # If we've already indented but we're on our outermost tag,
    # we have to add one final newline.
    if @level > 0 && @level - @neg_levels == 0
      tag += "\n"
    end

    return tag
  end


  def send(tag_name)
    return "<#{tag_name}/>"
  end

end