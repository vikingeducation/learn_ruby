class RPNCalculator

  attr_reader :nums, :value

  def initialize
    @nums = []
    @value = 0
  end

  def push(num)
    @nums << num
  end

  def plus
    @value = do_maths {'+'}
  end

  def minus
    @value = do_maths {'-'}
  end

  def divide
    @value = do_maths{'/'}
  end

  def times
    @value = do_maths{'*'}
  end

  def evaluate(items)
    items = tokens(items)
    items.each do |item|
      push(item) if item.is_a?(Fixnum)
      times if item == :*
      plus if item == :+
        minus if item == :-
        divide if item == :/
    end
    value

  end

  def tokens(tokens)
    operators = ['+', '-', '*', '/']
    tokens.split(' ').collect! do |token|
      operators.include?(token)? token.to_sym : token.to_i
    end
  end

  def do_maths
    begin
      @nums[-2] += @nums[-1] if yield == '+'
      @nums[-2] -= @nums[-1] if yield == '-'
      @nums[-2] /= @nums[-1] * 1.0 if yield == '/'
      @nums[-2] *= @nums[-1] if yield == '*'
    rescue NoMethodError
      raise "calculator is empty"
    end
    @nums.pop
    @val = @nums[-1]
  end
end
