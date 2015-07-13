def add (first, second)
  first + second
end

def subtract (first, second)
  first - second
end

def sum (array)
  total = 0
  array.each {|num| total += num}
  total
end

def multiply (first, second, *third)
  numbers = [first, second] + third
  total = 1
  numbers.each {|num| total *= num}
  total
end

def power(base, exponent)
  base ** exponent
end

def factorial (num)
  result = 1
  num.downto (1) do |n|
    result *= n
  end
  result
end
