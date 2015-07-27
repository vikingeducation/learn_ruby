def add (n1, n2)

  n1 + n2

end

def subtract (n1, n2)

  n1 - n2

end

def sum (array_num)

  if array_num.empty?
    return 0
  else
    return array_num.reduce(:+)
  end

end

def multiply (array_num)

  if array_num.empty?
    return 0
  else
    return array_num.reduce(:*)
  end

end

def power (n1, n2)

  n1 ** n2

end

def factorial (num)

  fact = 1

  if num > 0
    (1..num).each { |n| fact*=n }
  end

  return fact
end