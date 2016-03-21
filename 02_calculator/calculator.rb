def add(v1, v2)
  v1 + v2
end

def subtract(v1, v2)
  v1 - v2
end

def sum(array)
  array.inject(0){|running_total, item| running_total + item }
end

def multiply(array)
  array.inject(1){|running_total, item| running_total * item }
end

def power(v1, v2)
  v1**v2
end

def factorial(num)
  if num > 0
    total = 1
    for n in 1..num
      total *= n
    end
    return total
  else
    return 0
  end
end