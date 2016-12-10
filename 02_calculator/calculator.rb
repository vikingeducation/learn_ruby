def add(x,y)
  return x + y
end

def subtract(x,y)
  return x - y
end

def sum(arr)
  return arr.inject(0){|total, item|total + item}
end

def multiply(x,y,z=1)
  return x * y * z
end

def power(x,y)
  return x**y
end

def factorial(num)
  answer = 1
  (1..num).each{|num| answer *= num}
  return answer
end