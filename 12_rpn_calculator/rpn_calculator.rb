class RPNCalculator
  def initialize
    @stack = []
  end

  def push(num)
    @stack << num.to_f
  end

  def calc(operator)
    raise "calculator is empty" if @stack.size < 2
    @stack << @stack.pop(2).inject(operator)
  end

  def tokens(string)
    string.split(" ").map do |token|
      token =~ /[\+\-\*\/]/ ? token.to_sym : token.to_f
    end
  end

  def evaluate(string)
    tokens(string).each do |token|
      token.is_a?(Symbol) ? calc(token) : @stack.push(token)
    end
    value
  end

  def plus
    calc(:+)
  end

  def minus
    calc(:-)
  end

  def times
    calc(:*)
  end

  def divide
    calc(:/)
  end

  def value
    @stack[-1]
  end
end
