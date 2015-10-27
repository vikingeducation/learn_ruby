def add num1, num2
  num1 + num2
end

def subtract num1, num2
  num1 - num2
end

def sum array
  sum = 0
  array.each { |num| sum += num }
  sum
end

def multiply *args
  result = 1
  args.each { |arg| result *= arg }
  result
end

def power num1, num2
  num1 ** num2
end

def factorial number
  if number == 0
    1
  else
    result = 1
    number.times do |index|
      result *= (index + 1)
    end
    result
  end
end