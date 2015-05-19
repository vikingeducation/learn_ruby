def add(a,b)
  a + b
end


def subtract (a,b)
  a - b
end


def sum(array)
  sum = 0 
  array.each do |item|
    sum += item
  end
  sum
end


def multiply(array)
  product = 1

  array.each do |x|
    product *= x
  end
  product
end


def power(a,b)
  a ** b
end


def factorial(num)
  result = 1
  if num > 1
    array_of_numbers = (1..num).to_a
    array_of_numbers.each do |current_number|
      result *= current_number
    end
  end
  result
end

