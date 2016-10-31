def reverser
  words = yield.split(" ")
  words = words.each { |word| word.reverse! }
  out = words.join(" ")
end

def adder(how_much=1)
  out = yield + how_much
end

def repeater(how_much=1)
  how_much.times { yield }
end