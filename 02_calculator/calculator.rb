def add (num1, num2)
    return num1 + num2
end

def subtract (num1, num2)
    return num1 - num2
end    
    
def sum (arr)   
    total = 0
    arr.each do | item |
        total += item
    end
   return total
end

def multiply(arr) 
    product = 1
    arr.each do |item|
        product *= item
    end    
    return product
end

def power(num1, num2)    
    return num1 ** num2
end

def factorial (num)
    fact = 1


while num > 0 
       fact *= num
       num -= 1
   end   
       
   return fact    
end