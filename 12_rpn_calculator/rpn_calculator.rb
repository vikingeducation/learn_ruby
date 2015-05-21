class RPNCalculator
  def initialize
    @array = Array.new
  end

  def push(input)
    @array << input.to_i
  end

  def length_check?
    begin
      if @array.length <= 1
        raise "calculator is empty"
      end
    end
  end

  def plus
    length_check?
    @array[-2] += @array.last
    @array.pop
  end

  def minus
    length_check?
    @array[-2] -= @array.last
    @array.pop
  end

  def divide
    length_check?
    @array[-2] /= @array[-1].to_f
    @array.pop
  end

  def times
    length_check?
    @array[-2] *= @array[-1].to_f
    @array.pop
  end

  def value
    @value = @array.last
  end

  def tokens(string)
    string.split(" ").map do |substring|
      if ["+","-","*","/"].include?(substring)
        substring.to_sym
      else
        substring.to_i
      end
    end
  end

  def evaluate(string)
    token_array = tokens(string)

    token_array.each do |token|
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