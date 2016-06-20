class RPNCalculator
  OPERATORS=[:+,:-,:*,:/]

  attr_accessor :stack, :value
  #initialize with an empty array
  def initialize()
    @stack=[]
    @value=0
  end

  def push(num)
    @stack << num
  end

  def plus
    perform_op(:+)
  end

  def minus
    perform_op(:-)
  end

  def divide
    perform_op(:/)
  end

  def times
    perform_op(:*)
  end

  def perform_op(op_sym)
    raise "calculator is empty" unless @stack.count >=2

    num_2=@stack.pop
    num_1=@stack.pop

    case op_sym
    when :+
      result=num_1+num_2
    when :-
      result=num_1 - num_2
    when :*
      result=num_1*num_2
    when :/
      result=num_1.fdiv(num_2)
    end
    @value=result
    @stack << result
  end

#extras

def tokens(string)
  chars=string.split(" ")
  chars.map{|char| OPERATORS.include?(char.to_sym) ? char.to_sym : Integer(char)}
end

def evaluate(string)
  tokens(string).each do |token|
    case token
    when Integer
      push(token)
    when Symbol
      perform_op(token)
    end
  end
  @value
end

end