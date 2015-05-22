class Dictionary

  def initialize
    @content = Hash.new
  end

  def entries
    @content
  end

  def add(entry)
    if entry.is_a?(Hash)
      @content.merge!(entry)
    else
      @content[entry] = nil
    end
  end

  def keywords
    @content.keys.sort
  end

  def include?(keyword)
    @content.keys.include?(keyword)
  end

  def find(find_text)
    @content.select { |keyword, definition| keyword.include?(find_text)}
  end

def printable
  print_output = String.new
  @content.sort.each { |keyword, definition| print_output << "[#{keyword}] \"#{definition}\"\n" }
  print_output.chomp
end


end