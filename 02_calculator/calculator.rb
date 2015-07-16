def add(a,b)
  a+b
end

def subtract(a,b)
  a-b
end

def sum(arr)
  if arr.length==0
    0
  else
    sum=0
    arr.each do |elem| 
      sum+=elem
    end
    sum
  end
end

def multiply(arr)
  
    mult=1
    arr.each do |elem| 
      mult*=elem
    end
    mult
  
end

def power (a,b)
  b.times {a*=a}
end

def factorial(a)
  if a=0
    0
  else
  (1..a).each {|x| fact*=x}
  fact
  end
end

