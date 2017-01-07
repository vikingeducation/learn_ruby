def reverser(&block)
  if block_given?
    words = block.call.split
    reversed_words = words.map { |word| word.chars.reverse.join }
    reversed_words.join(" ")
  end
end

def adder(n = 1, &block)
  if block_given?
    block.call + n
  end
end

def repeater(n = 1, &block)
  n.times { block.call }
end

