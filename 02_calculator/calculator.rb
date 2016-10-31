def add(in1, in2)
  result = in1 + in2
end

def subtract(in1, in2)
  result = in1 - in2
end

def sum(array_of_ins)
  out = array_of_ins.inject(0) { |running_total, item| running_total + item }
end

def multiply(in1, in2)
  out = in1 * in2
end

def power(input, to_power)
  out = input ** to_power
end

def factorial(input)
  if input == 0
    out = 1
  elsif input > 0
    out = input * factorial(input - 1)
  end
end