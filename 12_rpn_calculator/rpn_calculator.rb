class RPNCalculator
  attr_accessor :calculator
  
  def initialize
    @calculator = []      #set calculator instance to an empty array to hold values
  end
    
  def push(num)
    @calculator << num   #adds the num to the calculator instance
  end
  
  def plus
    if @calculator.length < 2             #Check if there's anything to add 
      # puts "There's nothing to add!"
      raise "calculator is empty"        #Raise exception if there is nothing there
    else
      @calculator << @calculator.pop + @calculator.pop   #adds the sum of the popped numbers to the @calculator instance
    end
  end
  
  def minus
    if @calculator.length < 2            #Check if there's anything to subtract
      # puts "There's nothing to add!"
      raise "calculator is empty"        #Raise exception if there is nothing there
    else
      num1 = @calculator.pop
      num2 = @calculator.pop
      @calculator << num2 - num1   #adds the value remaining of the subtraction of popped numbers to the @calculator instance
    end
  end
  
  def times
    if @calculator.length < 2             #Check if there's anything to multiply
      # puts "There's nothing to add!"
      raise "calculator is empty"        #Raise exception if there is nothing there
    else
      num1 = @calculator.pop
      num2 = @calculator.pop
      @calculator << num1 * num2   #adds the product of popped numbers to the @calculator instance
    end
  end
  
  def divide
    if @calculator.length < 2             #Check if there's anything to multiply
      # puts "There's nothing to add!"
      raise "calculator is empty"        #Raise exception if there is nothing there
    else
      num1 = @calculator.pop.to_f
      num2 = @calculator.pop.to_f
      @calculator << (num2 / num1)   #adds the quotient of popped numbers to the @calculator instance (used the method .to_f to make sure it's a floating point)
    end
  end
   
  def value  
    @calculator.last                #return last value of the array which is the calculator's most recent value
  end
  
  def tokens(string)
    string.split(" ").collect do  |token|     #split string into an array and iterate over the words. Initially tried 
      if token == "+" || token == "-" || token == "*" || token == "/"    #this with .each but did not work. Found out
        token.to_sym                          # that you should use .collect when you want to actually change array
      else
        token.to_i            #if statement matches the special characters and if there's a match change the character
      end                     #to symbol terminology a la ":)". If not then just return the integer value of token. I
    end                   #admit I initially tried to use ":" + "token" but this was a pretty cool hack that I found.
  end
  
  def evaluate(string)
    @calculator = []      #assign an empty string to keep track of evaluations
    tokens(string).each do  |token|
      push token if token.is_a?(Numeric)   # if token is a number add it to the calculator
      plus if token == :+                  # add if token is the :+ symbol
      minus if token == :-                 # subtract if token is :- symbol
      times if token == :*                 # multiply if token is :* symbol
      divide if token == :/                # divide if token is :/ symbol
    end
    value
  end
end