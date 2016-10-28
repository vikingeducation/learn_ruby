def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(numbers)
  numbers.inject(0) {|result, num| result + num}
end

def multiply(numbers)
  numbers.inject(1, :*) {|result, num| result * num}
end

def power(base, exponent)
  result = base
  (exponent - 1).times do
    result = result * base
  end
  result
end

def factorial(number)
  if number == 0 || number == 1
    return 1
  else
    factorial = number * factorial(number - 1) 
  end
end