#write your code here
def add(a,b)
     a + b
end

def subtract(a,b)
    a - b
end

def sum(series)
    sum = 0
    if series[0] != nil
        series.each do |number|
            sum += number
        end
    else 
        sum += sum
    end
    sum
end

def multiply(series)
    result = 1
    series.each do |number|
        result *= number
    end
    result
end

def power(a,b)
    a ** b
end

def factorial(number)
    if number > 0 
        result = 1
        while (number > 0)
            result *= number
            number -= 1
        end
    else
        result = 0
    end
    result
end

factorial(3)