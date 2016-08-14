def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  if array.empty?
    0
  else
    array.reduce(:+)
  end
end

def multiply(*num)
  num.reduce(:*)
end

def power(a, b)
  a ** b
end


def factorial(n)
	nil if n < 0
	result = 1

	while n > 0
		result *= n
		n -= 1
	end
	result
end
