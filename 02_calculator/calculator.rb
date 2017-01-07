def add(x,y)
  x+y
end

def subtract(x,y)
  x-y
end

def sum(args)
  return 0 if args.empty?
  args.inject(:+)
end



#bonus

def multiply(*args)
  args.inject(:*)
end

def power(x,y)
  x**y
end

def factorial(n)
  return 1 if n == 0
  (1..n).inject(:*)
end