def add(x, y)
  x+y
end

def subtract(x, y)
  x-y
end

def sum(arr)
  arr.inject(0) {|runing_total, element| runing_total + element}
end

def multiply(arr)
  arr.inject(1) {|runing_product, element| runing_product * element}
end

def power(b, e)
  b**e
end

def factorial(n)
  return 1 if n == 0
  (1..n).inject(1) {|runing_product, element| runing_product * element}
end