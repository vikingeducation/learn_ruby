def add(first, second)
  first + second
end

def subtract(first, second)
  first - second
end

def sum(array)
  if array.empty?
    0
  else
    array.reduce do |a, b|
      a + b
    end
  end
end

def multiply(*numbers)
  numbers.reduce do |a,b|
    a * b
  end
end

def power(number, exponent)
  number ** exponent
end

def factorial(number)
  if number == 0 || number == 1
    1
  else
    (1..number).to_a.reduce do |a,b|
      a * b
    end
  end
end
