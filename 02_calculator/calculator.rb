def add (num1, num2)
  num1 + num2
end

def subtract (num1, num2)
  num1 - num2
end

def sum (numbers)
  #numbers.reduce(0) { |current_num, next_num| current_num + next_num }
  numbers.reduce(0, :+) 
end

def multiply (*args)
  args.reduce(1, :*)
end

def power (base, exponent)
  base ** exponent
end

def factorial number
	accumulator = 1
	number.downto(1) { |i| accumulator *= i }
	accumulator
end