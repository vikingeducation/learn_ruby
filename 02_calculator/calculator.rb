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