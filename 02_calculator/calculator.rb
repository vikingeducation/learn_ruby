def add(n1, n2)
  return n1 + n2
end

def subtract(n1, n2)
  return n1 - n2
end

def sum(arr_num)
  total = 0
  arr_num.each do |num|
    total += num
  end
  return total
end 

def multiply(n1, n2)
  return n1 * n2
end

def power(n1, n2)
  if n2 == 0
    return 1
  else 
    return n1 * power(n1, n2 - 1)
  end
end 

def factorial(n1)
  if n1 == 0
    return 0
  elsif n1 == 1
    return 1
  else 
    return n1 * factorial(n1 - 1)
  end
end