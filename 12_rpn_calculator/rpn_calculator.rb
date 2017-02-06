class RPNCalculator
  attr_reader :value

  def initialize
    @stack = []
  end

  def push(val)
    @stack.push(val)
  end

  def value
    @stack[-1]
  end

  def plus
    if @stack.count >= 2
      b = @stack.pop
      a = @stack.pop
      push(a + b)
    else
      raise "calculator is empty"
    end
  end

  def minus
    if @stack.count >= 2
      b = @stack.pop
      a = @stack.pop
      push(a - b)
    else
      raise "calculator is empty"
    end
  end

  def divide
    if @stack.count >= 2
      b = @stack.pop.to_f
      a = @stack.pop.to_f
      push(a / b)
    else
      raise "calculator is empty"
    end
  end

  def times
    if @stack.count >= 2
      b = @stack.pop
      a = @stack.pop
      push(a * b)
    else
      raise "calculator is empty"
    end
  end

  def tokens(s)
    tokenized_s = []

    s.length.times do |i|
      next if s[i] == " "
      /[0-9]/.match(s[i]) ? tokenized_s.push(s[i].to_i) : tokenized_s.push(:"#{s[i]}")
    end

    return tokenized_s
  end

  def evaluate(s)
    s.length.times do |i|
      case s[i]
        when /[0-9]/
          push(s[i].to_i)
        when "+"
          plus
        when "-"
          minus
        when "/"
          divide
        when "*"
          times
        else
          next
      end
    end

    value
  end

end

