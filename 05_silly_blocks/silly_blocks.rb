def reverser
  result = []

  yield.split.each do |word|
    result << word.reverse
  end

  result.join(" ")
end

def adder(added_num=1)
  result = yield
  result += added_num
end

def repeater(num=1)
  num.times { |item| yield }
end