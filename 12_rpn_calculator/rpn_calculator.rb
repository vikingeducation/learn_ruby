class RPNCalculator
  attr_accessor :stack

  def initialize(stack = [])
    @stack = stack
  end

  def push(num)
    @stack.push(num)
  end

  def pop
    num = @stack.pop
    num.nil? ? (raise "calculator is empty") : num.to_f
  end

  def plus
    return @stack << pop + pop
  end

  def minus
    return @stack << -1 * pop + pop
  end

  def divide
    return @stack << 1 / pop * pop
  end

  def times
    return @stack << pop * pop
  end

  def value 
    return @stack[-1]
  end

  def tokens(str)
    arr = []
    toks = str.split(" ")
    toks.each do |atok|
      /[1-9]/.match(atok) ? arr.push(atok.to_i) : arr.push(atok.to_sym)
    end
    return arr
  end

  def evaluate(str)
    toks = str.split(" ")
    toks.each do |atok|
      /[1-9]/.match(atok) ? @stack.push(atok.to_i) : operator(atok)
    end
    return value
  end

  def operator(input)
    symbol = input.chomp
    case symbol
    when "+"
      plus
    when "-"
      minus
    when "*"  
      times  
    when "/" 
      divide
    else
      raise "error"
    end
  end
end