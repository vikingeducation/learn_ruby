def add a,b
  a+b
end

def subtract a,b
  a-b
end

def sum arr
  sum=0
  arr.length.times do |i|
    sum += arr[i]
  end
  sum
end

def multiply arr
  product = 1
  arr.length.times do |i|
    product *= arr[i]
  end
  product
end

def power arr
  arr[0] ** arr[1]
end

def factorial(fac)

  if fac == 1
    return 1
  end
  if fac == 0
    return 0
  end
  
  result = factorial(fac-1) * fac
  return result

end
