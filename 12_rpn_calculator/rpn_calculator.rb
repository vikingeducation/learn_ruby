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

  # Pops from stack if there are values, otherwise raises execption.
  def pop
    @stack.length > 0 ? @stack.pop() : (raise "calculator is empty")
  end

  # Pops the two latest values off of the stack, does a calc, pushes on to stack and returns value.
  # Converts r1 and r2 to floats to work with division.
  def calc
    r1 = pop
    r2 = pop
    val = yield r2.to_f, r1.to_f
    @stack << val
    return val
  end

  # I figured out how to refactor. Just passes the appropriate symbol to calc.
  def plus
    @value = calc(&:+)
  end

  def minus
    @value = calc(&:-)
  end

  def divide
    @value = calc(&:/)
  end

  def times
    @value = calc(&:*)
  end

  # Only numbers will convert from string -> int -> string and stay the same.
  # Our operands, str -> int -> str will end up "0" every time.
  def tokens(str)
    str.split(" ").map{|t| t.to_i.to_s == t ? t.to_i : t.to_sym}
  end

  # If the token is a symbol, calls calc with the symbol.
  # Otherwise, pushes the value onto the stack.
  def evaluate(str)
    tokens(str).each do |val|
      (val.is_a? Symbol) ? @value = calc(&val) : push(val)
    end

    return @value
  end
end