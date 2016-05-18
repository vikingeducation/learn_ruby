class RPNCalculator
  def initialize
    @stack = []
  end

  def push(number)
    @stack.push(number.to_f)
  end

  def plus
    stack_check
    @stack.push(@stack.pop + @stack.pop)
  end

  def minus
    stack_check
    second_number = @stack.pop
    @stack.push(@stack.pop - second_number)
  end

  def divide
    stack_check
    second_number = @stack.pop
    @stack.push(@stack.pop / second_number)
  end

  def times
    stack_check
    @stack.push(@stack.pop * @stack.pop)
  end

  def value
    @stack[-1]
  end

  def stack_check
    if @stack.size<2
      raise "calculator is empty"
    end
  end

  def tokens(token_list)
    converted_tokens = []
    token_list = token_list.split
    token_list.each do |token|
      case token
      when '+'
        converted_tokens << :+
      when '-'
        converted_tokens << :-
      when '/'
        converted_tokens << :/
      when '*'
        converted_tokens << :*
      else
        converted_tokens << token.to_f
      end
    end
    converted_tokens
  end

  def evaluate(token_list)
    token_stack = tokens(token_list)
    token_stack.each do |token|
      case token
      when :+
        plus
      when :-
        minus
      when :/
        divide
      when :*
        times
      else
        push(token)
      end
    end

    value
  end
end