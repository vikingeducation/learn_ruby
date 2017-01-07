def add(num1,num2)
    return num1+num2
end
def subtract(num1,num2)
    return num1-num2
end
def sum(arr)
    arr.inject(0){|sum,element| sum += element}
end

def multiply(*nums)
	prod=1
	if nums.length > 1
        nums.each {|element| prod *= element}
        prod
    end    
end

def power(num1,num2)

    return 1 if num2.zero?
	
	if num2 < 0
		num1 = 1.0/num1
		num2 = num2.abs
    end		
    
    return num1 * power(num1,num2 - 1)   
    
end


def factorial(num)

    return 1 if num <= 1
	
    return num * factorial(num-1)   
end