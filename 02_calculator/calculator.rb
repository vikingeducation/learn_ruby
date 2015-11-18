def add(number_1, number_2)
  total = number_1 + number_2
end

def subtract(number_1, number_2)
  answer = number_1 - number_2
end

def sum(array_of_numbers)
  total = 0
  array_of_numbers.each do |number|
    total += number
  end
  total
end

def multiply(array_of_numbers)
  total = 1
  array_of_numbers.each do |number|
    total *= number
  end
  total
end

def power(base, exponent)
  total = 1
  if exponent == 0
    if base >= 0
      total = 1
    else
      total = -1
    end
  elsif base == 0 && exponent <0
    return "Answer Undefined"
  elsif base < 0 && exponent > 0
    exponent.times {total *= base}
    if total > 0
      return total * -1
    end
  elsif base < 0 && exponent < 0
    (exponent * -1).times {total *= base}
    if total > 0
      return Rational(1, (-1 * total))
    else
      return Rational(1, total)
    end
  elsif exponent < 0
    (exponent * -1).times {total *= base}
    if total < 0
      return Rational(1, (-1 * total))
    else
      return Rational(1, total)
    end
  else
    exponent.times {total *= base}
  end
  return total
end

def factorial(number)
  total = 1
  number.times {|x| total *= (x+1)}
  total
end
