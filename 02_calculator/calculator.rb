def add(num1, num2)
    num1 + num2
end

def subtract(num1, num2)
    num1 - num2
end

def sum(num)
    sum = num.inject(0, :+)

end

def multiply(*nums)
    sum = 1
    sum = nums.reduce(:*)
end

def power(num, power)
    num**power
end

def factorial(num)
    (1..num).inject(1, :*)
end