def add first, second
  first + second
end

def subtract first, second
  first - second
end

def sum array
  return 0 if array.empty?
  array.reduce(:+)
end

def multiply *nums
  nums.reduce(:*)
end

def power base, expt
  base ** expt
end

def factorial num
  return 1 if num == 0
  (1..num).to_a.reduce(:*)
end
