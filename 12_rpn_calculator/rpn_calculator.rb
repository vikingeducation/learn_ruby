class RPNCalculator

  def initialize
    @stack = []
    @value = 0
  end

  def value
    @value
  end

  def push(val)
    @stack << val
  end

  # Not sure how, but I bet there's a way to refactor this out.
  # For all operations, r2 is more left than r1, so it's the left side of any operation.
  def plus
    if @stack.length > 1
      r1 = @stack.pop()
      r2 = @stack.pop()

      @value = r2 + r1

      @stack << @value
    else
      raise "calculator is empty"
    end
  end

  def minus
    if @stack.length > 1
      r1 = @stack.pop()
      r2 = @stack.pop()

      @value = r2 - r1

      @stack << @value
    else
      raise "calculator is empty"
    end
  end

  def divide
    if @stack.length > 1
      r1 = @stack.pop()
      r2 = @stack.pop()

      @value = r2.to_f / r1

      @stack << @value
    else
      raise "calculator is empty"
    end
  end

  def times
    if @stack.length > 1
      r1 = @stack.pop()
      r2 = @stack.pop()

      @value = r2 * r1

      @stack << @value
    else
      raise "calculator is empty"
    end
  end

  # Only numbers will convert from string -> int -> string and stay the same.
  # Our operands, str -> int -> str will end up "0" every time.
  def tokens(str)
    str.split(" ").map{|t| t.to_i.to_s == t ? t.to_i : t.to_sym}
  end

  def evaluate(str)
    # Clear the stack out first.
    @stack = []

    # Tokenize the input
    eval_stack = tokens(str)

    # Evaluate the input based on the tokens.
    eval_stack.each do |val|

      # If it's not a symbol we push, if it is we perform the corresponding action.
      if !(val.is_a? Symbol)
        push(val)
      elsif val == :*
        times
      elsif val == :/
        divide
      elsif val == :-
        minus
      elsif val == :+
        plus
      end
    end

    return @value
  end
end