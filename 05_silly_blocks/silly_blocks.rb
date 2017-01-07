def reverser(&prc)
  sentence=prc.call
  words=sentence.split(" ")
  words.map{|word| word.reverse}.join(" ")
end

def adder(base=1,&prc)
  prc.call+base
end

def repeater(times=1,&prc)
  times.times do
    prc.call
  end
end