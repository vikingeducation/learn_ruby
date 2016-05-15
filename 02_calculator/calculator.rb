def add(first, second)
  first+second
end

def subtract(first, second)
  first-second
end

def sum(numbers)
  sum=0
  numbers.each do |addend|
    sum+=addend
  end
  sum
end

def multiply(numbers)
  product=1
  numbers.each do |multiplier|
   product *= multiplier
  end
  product
end

def power(first, second)
  first**second
end

def factorial(number)
  if number == 0
    return 1
  end

  result = 1

  1.upto(number) do |multiplier|
    result *= multiplier
  end

  result
end