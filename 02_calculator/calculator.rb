def add(num1,num2)
  num1 += num2
end

def subtract(num1,num2)
  num1 -= num2
end

def sum(nums)
  nums.inject(0) {|result, num| result + num}
end

def multiply(*nums)
  nums.inject(1) {|result, num| result *= num}
end

def power(num1,num2)
  num1**num2
end

def factorial(num)
  return 0 if num == 0; (1..num).inject(1) {|result, num| result *= num}
end
