class RPNCalculator
  def initialize
    @stack = []
  end

  def push(item)
    @stack.push(item)
  end

  def plus
    raise "calculator is empty" if @stack.length < 2
    item2 = @stack.pop
    item1 = @stack.pop
    @stack.push(item1 + item2)
  end

  def minus
    raise "calculator is empty" if @stack.length < 2
    item2 = @stack.pop
    item1 = @stack.pop
    @stack.push(item1 - item2)
  end

  def times
    raise "calculator is empty" if @stack.length < 2
    item2 = @stack.pop
    item1 = @stack.pop
    @stack.push(item1 * item2)
  end

  def divide
    raise "calculator is empty" if @stack.length < 2
    item2 = @stack.pop
    item1 = @stack.pop
    @stack.push((item1.to_f / item2.to_f))
  end

  def value
    @stack[-1]
  end

  def tokens(tokens)
    tokens.split(" ").map do |token|
      token.match(/^[[:digit:]]$/) ? token.to_i : token.to_sym
    end
  end

  def evaluate(string)
    tokens(string).each do |item|
      if item.is_a? Integer
        push(item)
      else
        case item
        when :*
          times
        when :+
          plus
        when :-
          minus
        when :/
          divide
        end
      end
    end
    value
  end
end
