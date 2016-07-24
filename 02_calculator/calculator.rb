def add n1, n2
  n1 + n2
end

def subtract n1, n2
  n1 - n2
end

def sum arr
  arr.inject(0) { |sum, num| sum + num }
end

def multiply *args
  args.inject(1) { |sum, num| sum * num }
end

def power n, p
  result = 1
  p.times { result *= n }
  result
end

def factorial n
  return 1 if n == 0
  (1..n).inject(1) { |sum, num| sum * num }
end
