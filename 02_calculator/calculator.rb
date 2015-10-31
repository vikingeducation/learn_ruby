def add(first_number,second_number)
  first_number + second_number
end

def subtract(first_number,second_number)
  first_number - second_number
end

def sum(number_arr)
  if (number_arr.size < 1)
    return 0
  else
    sum = 0
    number_arr.each { |number| sum = sum + number }
    return sum
  end
end

def multiply(number_arr)
  if (number_arr.size < 1)
    return 0
  else
    product = 1
    number_arr.each { |number| product = product * number }
    return product
  end
end

def power(base,exponent)
  base ** exponent
end

def factorial(number)
  if number == 0
    return 1
  else
    result = 1
    number.downto(1) { |factor| result = result * factor }
    return result
  end
end
