
def reverser
  new_result = []
  old_result = yield
  old_result = old_result.split(" ")
  if old_result.length > 1
  a = old_result[0]
  b = old_result[1]
  new_result[0] = a.reverse
  new_result[1] = " "
  new_result[2]= b.reverse
  result = new_result.join
  else
    result = old_result[0].reverse
  end

end

def adder adding = 1

    result = yield + adding

end

def repeater (n=0)
  if yield == false
    yield == true
  else

    (n-1).times do yield
    end

  end
  end
