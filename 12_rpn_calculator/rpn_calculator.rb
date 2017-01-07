class RPNCalculator
  attr_reader :value
  def initialize
    @stack = []
  end

  def value
    @stack.last
  end

  def push num
    @stack << num.to_f
  end

  def plus
    @stack.size > 1 ? @stack << (@stack.pop + @stack.pop) : raise("calculator is empty")
  end

  def minus
    @stack.size > 1 ? @stack << ((@stack.pop * -1) + @stack.pop) : raise("calculator is empty")
  end

  def times
    @stack.size > 1 ? @stack << (@stack.pop * @stack.pop) : raise("calculator is empty")
  end

  def divide
    @stack.size > 1 ? @stack << ((1/@stack.pop) * @stack.pop) : raise("calculator is empty")
  end

  def tokens string
    operators = %w[+ - * /]
    string.split(' ').map do |char|
      operators.include?(char) ? char.to_sym : char.to_i
    end
  end

  def evaluate string
    tokens(string).each do |token|
      case token
      when :+
        plus
      when :-
        minus
      when :*
        times
      when :/
        divide
      else
        push(token)
      end
    end
    value
  end
end
