class RPNCalculator
  attr_accessor :calculator, :value

  def initialize
    @stack = []

  end

  def value
    @stack.last
  end

  def push(a)
    @stack << a
  end

  def plus
    raise "calculator is empty" if @stack.length < 2

    a = @stack.pop
    b = @stack.pop
    total = a + b

    @stack << total
  end

  def minus
    raise "calculator is empty" if @stack.length < 2

    a = @stack.pop
    b = @stack.pop
    total = b - a

    @stack << total
  end

  def times
    raise "calculator is empty" if @stack.length < 2

    a = @stack.pop.to_f
    b = @stack.pop.to_f
    total = b * a

    @stack << total
  end

  def divide
    raise "calculator is empty" if @stack.length < 2

    a = @stack.pop.to_f
    b = @stack.pop.to_f
    total = b / a

    @stack << total
  end

  def tokens(string)
    string.split(" ").map do |token|
      (token.match(/\d+/)) ? token.to_f : token.to_sym
    end
  end

  def evaluate(string)
    tokens(string).each do |token|
      case token
        when :+ then plus
        when :- then minus
        when :/ then divide
        when :* then times
        else push(token)
      end # case
    end # tokens.each

    value
  end # evaluate
end