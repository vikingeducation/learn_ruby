def add (number_one, number_two)
  return number_one + number_two
end

def subtract(sub_one, sub_two)
  return sub_one - sub_two
end

def sum(array)
  sum = 0
  array.each do |item|
    sum += item
  end
  return sum
end

def multiply(*args)
  result = 1
  args.each do |multiply_item|
    result *= multiply_item
  end
  return result
end

def power(base, exponent)
  return base**exponent
end

def factorial(factorial_input)
  if factorial_input == 0
    return 1
  else
    return (factorial_input*factorial(factorial_input-1))
  end
end