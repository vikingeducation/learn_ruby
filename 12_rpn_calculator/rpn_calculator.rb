class RPNCalculator
	def initialize
		@calc = []
	end

	def push num
		@calc.push num
	end

  def value
    @calc.last
  end

	def plus
		if @calc.length >= 2
      sum = @calc.pop + @calc.pop
      @calc << sum
    else
      raise "calculator is empty"
    end

	end

	def minus
		if @calc.length >= 2
      sec = @calc.pop
      fir = @calc.pop
      sub = fir - sec
      @calc << sub
    else
      raise "calculator is empty"
    end
	end

	def divide
		if @calc.length >= 2
      sec = @calc.pop.to_f
      fir = @calc.pop.to_f
      div = fir / sec
      @calc << div
    else
      raise "calculator is empty"
    end
	end

	def times
		if @calc.length >= 2
      mul = @calc.pop * @calc.pop
      @calc << mul
    else
      raise "calculator is empty"
    end
	end

  def tokens str
    tokens_arr = []
    str.split(" ").each do |char|
      if ("*/+-").include?(char)
        tokens_arr << char.to_sym
      else
        tokens_arr << char.to_i
      end
    end
    tokens_arr
  end

  def evaluate str
    tokens_arr = tokens str
    tokens_arr.each do |char|
      if char.is_a?(Symbol)
        case char
        when :*
          times
        when :/
          divide
        when :+
          plus
        when :-
          minus
        end
      else
        @calc << char
      end
    end
    value
  end

end