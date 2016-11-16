# TDD RSpec
# silly_blocks.rb

# Reverse words in string
def reverser
  str = yield
  words = str.split(" ")

  words.each do |word|
    word.reverse!
  end
  words.join(" ")
end

result = reverser do
  "hello"
end

reverse_words = reverser do
  "hello dolly"
end


def adder(n=1)
  yield + n
end

 adder(3) do
  5
 end



def repeater(n=1)
  n.times do
    yield
  end
end

# block_was_executed = repeater do
#   true
# end