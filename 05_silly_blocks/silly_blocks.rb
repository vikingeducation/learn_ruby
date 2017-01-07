def reverser
  words = yield.split
  reversed = ""
  words.each_with_index do |word, i|
    if i == 0
      reversed += word.reverse
    else
      reversed += " " + word.reverse
    end
  end
  reversed
end

def adder(add=1)
  add + yield
end

def repeater(num=1)
  num.times { yield }
end
