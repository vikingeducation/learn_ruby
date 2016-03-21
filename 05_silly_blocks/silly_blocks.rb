 def reverser
  phrase = []
  orig_phrase = yield.split(' ')
  orig_phrase.each do |word, index|
    phrase.push(word.reverse)
    if orig_phrase.last != word && yield.split.length > 1
      phrase.push(' ')
    end
  end
  phrase.join
end

def adder(num=1)
  yield + num
end

def repeater(num=1)
  (1..num).each {yield}
end