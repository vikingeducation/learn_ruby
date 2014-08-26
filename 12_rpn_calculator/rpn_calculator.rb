class RPNCalculator

def initialize
  @stack = []
end

def push(number)
  @stack.push(number)
end

def value
  @stack[-1]
end

def plus
  if @stack.size > 1
    @stack.push(@stack.pop(2).inject(:+))
  else
    stack_fail
  end
end

def minus
  if @stack.size > 1
    @stack.push(@stack.pop(2).inject(:-))
  else
    stack_fail
  end
end

def divide
  if @stack.size > 1
    @stack.push(@stack.pop(2).inject{|memo, obj| memo.to_f / obj})
  else
    stack_fail
  end
end

def times
  if @stack.size > 1
    @stack.push(@stack.pop(2).inject(:*))
  else
    stack_fail
  end
end

def tokens(string)
  calculator_inputs = string.split

  calculator_inputs.map do |element|
    case element
    when "+" then :+
    when "-" then :-
    when "/" then :/
    when "*" then :*
    else element.to_f
    end
  end

end

def evaluate(string)
  p tokens(string)
  tokens(string).each do |token|
    case token
      when :+ then plus
      when :- then minus
      when :* then times
      when :/ then divide
      else @stack.push(token)
    end
  end
  value
end


private

def stack_fail
  raise "calculator is empty"
end

end
