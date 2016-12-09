# TDD
# Topics
# * arrays
# * arithmetic
# * strings
#
# # RPN Calculator
# Reverse polish calculator

class RPNCalculator
  def initialize
    @calc = []
  end

  def push(item)
    @calc.push(item)
  end

  def plus
    if(@calc.size >= 2)
      # puts "reached the plus method"
      sum = @calc.pop + @calc.pop
    else
      raise ("calculator is empty")
    end
    
    @calc.push(sum)
  end

  def minus
    num1 = 0
    num2 = 0

    if(@calc.size >= 2)
      num1 = @calc.pop 
      num2 = @calc.pop
      result = num2 - num1
    else
      raise ("calculator is empty")
    end
    
    @calc.push(result)
  end


  def times
    if(@calc.size >= 2)
      result = @calc.pop.to_f * @calc.pop.to_f
    else
      raise ("calculator is empty")
    end
    
    @calc.push(result)
  end

  def divide
    num1 = 0
    num2 = 0

    if(@calc.size >= 2)
      num1 = @calc.pop.to_f
      num2 = @calc.pop.to_f
      result = num2 / num1
    else
      raise ("calculator is empty")
    end
    
    @calc.push(result)
  end

  # The last item on the array as the result of the operation is always pushed on to the array
  def value
    @calc.last
  end

  # Extra bonus task
  def tokens(input)
    operators = ["*","/", "+", "-"]

    arr_string = input.split(" ")
    arr_string.each_with_index do |value, index|
      if(operators.include?(value))
        arr_string[index] = arr_string[index].to_sym
      else
        arr_string[index] = arr_string[index].to_i
      end

    end
    arr_string
  end

   # Extra bonus task
   def evaluate(str)
    tokenized_str = tokens(str)
    tokenized_str.each do |item|
      case item
        when :+
          plus
        when :-
          minus
        when :*
          times
        when :/
          divide
        else
          push(item)
      end
    end
    # Return final vlaue
    value
   end


end

# calculator = RPNCalculator.new
# calculator.evaluate("1 2 3 * +")
# #     calculator.push(2)
# #     calculator.push(3)
# #     calculator.plus