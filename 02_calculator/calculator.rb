def add x, y
    x + y
end

def subtract x, y
    x - y
end

def sum numbers
    sum = 0
    numbers.each do |num|
        sum += num
    end

    sum
end

def multiply numbers
    mul = 1
    numbers.each do |num|
        mul *= num
    end

    mul
end

def power x, y
    x ** y
end

def factorial x
    fact = 1

    (1..x).each do |num|
        fact *= num
    end

    if x == 0
        fact = 0
    end

    fact
end
