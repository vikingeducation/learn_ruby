class RPNCalculator

def initialize
  @numbers = []
end

def push(value)
  @numbers << value.to_f
end

def calc(operation)
  raise "calculator is empty" if @numbers.size < 2
  calculation = @numbers[-2].send(operation, @numbers[-1])
  @numbers.pop(2)
  @numbers << calculation
end

def plus
  calc(:+)
end

def minus
  calc(:-)
end  

def divide
  calc(:/)
end

def times
  calc(:*)
end

def tokens(string)
  string.split(" ").map do |item|
    item =~ /[\+\-\*\/]/ ? item.to_sym : item.to_f
  end
end

def evaluate(string)
  tokens(string).each do |item|
    item.is_a?(Float) ? @numbers<<item : calc(item)
  end
  value
end

def value
  @numbers.last
end
end


# rewrite with everything with num1.send(operation, num2) method
# @numbers.pop(2).inject(operator)
#[1, 2, 3, 4, 5] -- [4,6].inject(:*)