def add num,mod
  num + mod
end
def subtract num, mod
  num - mod
end
def sum numbers
  total = 0
  numbers.each{|num| total += num}
  total
end
def multiply num, factor, *multiple
  if multiple
    multiple.each {|additional_factor| factor *= additional_factor}
  end
  num * factor
end
def power num, factor
  num**factor
end
def factorial num
  if num < 2 then return 1 end
  total = 1
  num.downto(1) {|factorial| total *= factorial}
  total
end