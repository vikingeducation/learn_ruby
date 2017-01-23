def reverser
  if block_given?
    block = yield
    if block.split(" ").length > 1
      strings = block.split(" ")
      strings.map { |string| string.reverse! }
      return strings.join(" ")
    else
      return block.reverse
    end
  end
end