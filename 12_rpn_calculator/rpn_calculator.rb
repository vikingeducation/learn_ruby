class RPNCalculator

  def initialize
    @data = []
  end

  def push(number)
    @data << number
  end
  
  def check_data
    if @data.empty?
     raise "calculator is empty"
    end
  end


  def plus
    check_data
    @data << (@data.pop + @data.pop)
  end

  def minus
    check_data
    @data << (-(@data.pop) + @data.pop)
  end

  def times
    check_data
    @data << (@data.pop * @data.pop)
  end

  def divide
    check_data
    temp = @data.pop.to_f 
    temp2 = @data.pop / temp
    @data << temp 
  end

  def value
    check_data 
    @data.last
  end

  def tokens(str)
    str.split(" ").map do |tkn|
      case tkn
        when "+", "-", "*", "/"
          tkn.to_sym
        else
          tkn.to_i
        end
    end
  end

  def evaluate(str)
    tokens(str).each do |tkn|
      case tkn
        when :+
          plus
        when :-
          minus
        when :*
          times
        when :/
          divide
        else
          @data << tkn
        end
    end
    value 
  end

end 
