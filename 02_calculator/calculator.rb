def add (number1, number2)
    return number1+number2
end

def subtract (number1, number2)
    return number1-number2
end

def sum (number)
    result=0
    number.each do |a|
        result = result + a.to_i
    end
    return result
end

def multiply (*number)
    result = 1
    number.each do |a|
        result = result * a.to_i
    end
    return result
end

def power (number,power)
    result = 1
    power.times do
        result = result * number
    end
    return result
end

def factorial (number)
    
    result =1
    
    if number==0 || number==1
        return result
    end
    
    for i in 1..number
        result = result*i
    end
    return result
    
end