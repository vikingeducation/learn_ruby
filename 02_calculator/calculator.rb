def add(a,b)
  a+b 
end

def subtract(a,b)
  a-b
end

def sum(sumarr)
  sum = 0
  sumarr.each{|num| sum+=num} 
  sum
end

def multiply(a,b)
  a*b
end

def power(a,b)
  a**b
end

def factorial(n)
  if n==0
    1
  else
    n * factorial(n-1)
  end
end