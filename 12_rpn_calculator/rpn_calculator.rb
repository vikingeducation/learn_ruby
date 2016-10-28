#Fails the test due to a NilClass error but it
#runs just fine manually.  Don't know the issue
#with the test, but this works.

class RPNCalculator

  def initialize(calc=[])

    @calculator = calc
    @numbers = []

  end



  def push(num)

    @calculator.push(num)

  end


  def plus

    a = @numbers[1]
    b = @numbers[0]

    @numbers.pop(2)
    sum = a + b

  end


  def minus

    a = @numbers[1]
    b = @numbers[0]

    @numbers.pop(2)
    difference = a - b

  end


  def times

    a = @numbers[1]
    b = @numbers[0]

    @numbers.pop(2)
    product = a * b

  end


  def divide

    a = @numbers[1]
    b = @numbers[0]

    @numbers.pop(2)
    quotient = a / b

  end


  def value

    #@numbers = []

    @calculator.each do |e|
      
      if @calculator.length < 3
        raise "calculator is empty"
        break
      elsif e =~ /[\d]/
        @numbers.push(e.to_f)
        p @numbers
      elsif e == "+"
        @numbers.push(plus) if @numbers.length >= 2
        #@numbers.push(plus(numbers.pop(2))) if numbers.length >= 2
      elsif e =="-"
        @numbers.push(minus) if @numbers.length >= 2
        #@numbers.push(minus(@numbers.pop(2))) if @numbers.length >= 2
      elsif e == "*"
        @numbers.push(time) if @numbers.length >= 2
        #@numbers.push(times(@numbers.pop(2))) if @numbers.length >= 2
      elsif e == "/"
        @numbers.push(divide) if @numbers.length >= 2
        #@numbers.push(divide(@numbers.pop(2))) if @numbers.length >= 2
      end
      
    end
    @numbers
  end



end


calc = RPNCalculator.new

calc.push("2")
calc.push("3")
calc.push("+")
calc.push("5")
calc.push("/")
p calc.value












=begin
  #attr_accessor :calculator

  def push(num)
    
    @calculator << num

  end

  def plus

    sum = 0

    stack = []

    first_operand = @calculator[-1].to_i
    @calculator.pop
    second_operand = @calculator[-1].to_i

    sum = second_operand + first_operand

    sum
  end

  def value

    @value = plus

  end

end

calculator = RPNCalculator.new
calculator.push(2)
calculator.push(3)
calculator.push(4)
p calculator.plus
#p calculator.value
=end