
def add(x,y)
   x + y
end

def subtract(x,y)
  x - y
end

def sum(arr)
   arr.empty? ?  0 :  arr.inject(:+)
end

def multiply(arr)
    arr.inject(:*)
end

def power(x,y)
  x**y
end

def factorial(x)
  x == 0 ? 0 : (1..x).inject(:*)
end


