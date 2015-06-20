# Take all arguments and add together
def add(*args)
  args.reduce(:+)
end

# Take all arguments and subtract in succession
def subtract(*args)
  args.reduce(:-)
end

# Take all arguments and add together.
# This has to accept an empty array.
def sum(arr)

  # Can't just do .reduce(:+) or empty array returns nil.
  arr.reduce(0){|acc, val| acc += val}
end

def multiply(*args)
  args.reduce(:*)
end

def power(base, exp)
  base ** exp
end

# Recursive function to calculate factorial
def factorial(val)
  if val == 0 || val == 1
    return 1
  end

  val * factorial(val - 1)
end