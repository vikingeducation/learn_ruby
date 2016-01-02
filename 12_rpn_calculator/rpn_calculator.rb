class RPNCalculator

  attr_accessor :calculator, :value

  def initialize
    @calculator = []
    @value = 0
  end


  def push(n)
    @calculator.push(n)
  end


  def check_for_empty
    if @calculator.empty?
      raise "calculator is empty"
    end
  end


  def plus
    check_for_empty
    stack = @calculator.pop() + @calculator.pop()
    @calculator << stack
    @value = stack
  end


  def minus
    check_for_empty
    subtracted = @calculator.pop()
    from = @calculator.pop()
    @calculator << from - subtracted
    @value = from - subtracted
  end


  def times
    check_for_empty
    stack = @calculator.pop() * @calculator.pop()
    @calculator << stack
    @value = stack
  end


  def divide
    check_for_empty
    denominator = @calculator.pop()
    nominator = @calculator.pop()
    @calculator << nominator.to_f / denominator
    @value = nominator.to_f / denominator
  end



end