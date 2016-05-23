def reverser(&prc)
  string = prc.call
  string.split(" ").map {|word| word.reverse}.join(" ")
end

def adder(n_to_add = 1, &prc)
  num = prc.call
  num + n_to_add
end

def repeater(n=1, &prc)
  n.times do 
    value = prc.call(value)
  end
end