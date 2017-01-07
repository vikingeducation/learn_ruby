
def add (a, b)
    a + b
end

def subtract (a, b)
    a - b
end

def sum(arr)
    arr.reduce(0) {|sum, elt| sum + elt }
end

def multiply ( *args )
    args.reduce(1) {|prod, elt| prod * elt }
end

def power (a, b)
    a ** b
end

def factorial( n )
    result = 1
    for i in 1..n
        result *= i
    end
    result
end 

