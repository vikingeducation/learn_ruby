def add(number_1, number_2)
  number_1 + number_2
end

def subtract(number_1, number_2)
  number_1 - number_2
end

def sum(array)
  result = 0
  array.each { |element| result += element }
  result
end

def multiply(*numbers)
  result = 1
  if numbers.length < 2
    puts "Please enter 2 or more numbers."
  else
    numbers.each { |number| result *= number}
  end
  result
end

def power(number_1, number_2)
  return number_1 ** number_2
end

def factorial(number)
  result = 1
  if number == 0
    return 1
  else
    (1..number).each { |value| result *= value }
  end
  result
end