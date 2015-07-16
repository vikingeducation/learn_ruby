class RPNCalculator
  attr_accessor :input

  def initialize
    @input=[]
    @value=0

  end

  def push(num)
    @input.push(num)
  end

  def plus
    if @input.empty?
      raise "calculator is empty"
    else
    @input.push("+")
    @value=calc(@input)
    end
  end

  def minus
    if @input.empty?
      raise "calculator is empty"
    else
    @input.push("-")
    @value=calc(@input)
    end
  end

  def divide
    if @input.empty?
      raise "calculator is empty"
    else
    @input.push("/")
    @value=calc(@input)
    end
  end

  def times
    if @input.empty?
      raise "calculator is empty"
    else
    @input.push("*")
    @value=calc(@input)
    end
  end

  def value
    @value
  end

  def calc(arr)
    
      case arr.pop
          when "+"
            
            arr<<arr.pop+arr.pop
            
          when "-"
            arr << -arr.pop+arr.pop  
          when "/"
            b=arr.pop
            a=arr.pop
            arr<<a.to_f / b.to_f
          when "*"
            arr<<arr.pop * arr.pop     
      end
          arr[-1]
    
  end

  def tokens(str)
    str.split(" ").map do |elem|
      elem =~ /\A[-+]?[0-9]+\z/ ? elem.to_i : elem.to_sym
    end
  end

  def evaluate(str)
    arr=self.tokens(str) #1) without self tokens(str)  works too, why? 2) What is better @ or self.
    arr.each do  |i|
      if i.is_a?(Integer)
        self.push(i)
      else
        case i  
              when :+
                self.plus
                
              when :-
                self.minus
              
              when :/
                self.divide
              
              when :*
                self.times 
        end  
      end
    end
      self.value
  end
end