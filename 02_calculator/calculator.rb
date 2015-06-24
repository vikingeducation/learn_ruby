def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  sum = 0
  (0..array.length-1).each do |i|
    sum += array[i]
  end
  sum
end

def multiply(a, b, c =1)
  a*b*c
end

def power(base, exponent)
  power = 1
  exponent.times do
    power*=base
  end
  power
end

def factorial(num)
  value = 1
  num.times do |i|
    value*=i
  end
end