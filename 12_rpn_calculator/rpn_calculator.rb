class RPNCalculator
  
  attr_reader :value

  def initialize
    @value = 0
    @entered = []
  end

  def divide
    operate &:/
  end

  def evaluate formula
    formula = tokens formula
    formula.each do |token|
      (token.class == Symbol ? operate(&token) : push(token))
    end
    return @value
  end

  def minus
    operate &:-
  end

  def operate &operator
    raise "calculator is empty" if @entered.length < 2
    @value = @entered.push(@entered.pop(2).reduce &operator)[-1]
  end

  def plus
    operate &:+
  end

  def push num
    @entered << num.to_f
  end

  def times
    operate &:*
  end

  def tokens token_list
    token_list.split(" ").map do |token| 
      (token.to_i.to_s == token ? token.to_i : token.to_sym)
    end
  end

end