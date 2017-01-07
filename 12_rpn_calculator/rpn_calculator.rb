class RPNCalculator

  attr_accessor :calc

  def initialize
    @calc = []
    @operator = ''
  end

  def push(n)
    @calc.push(n)
  end

  def plus
    with_handling do
      @calc.push(@calc.pop + @calc.pop)
    end
  end

  def minus
    with_handling do
      terms=@calc.pop(2)
      @calc.push(terms[0]-terms[1])
    end
  end

  def divide
    with_handling do
      terms=@calc.pop(2)
      @calc.push(terms[0].to_f/terms[1])
    end
  end

  def times
    with_handling do
      terms=@calc.pop(2)
      @calc.push(terms[1] * terms[0])
    end
  end

  def value
    @calc[-1]
  end

  def with_handling
    begin
      yield
    rescue
      raise "calculator is empty"
    end
  end

  def tokens(str)
    str.split.map! { |t| t[/\d/] ? t.to_i : t.to_sym }
  end

  def evaluate(str)
    
    array = tokens(str)
    @sol = []
    array.each do |n|
      if n.is_a?(Integer)
      @sol.push(n) 
    else
      @sol.push(@sol.delete_at(-2).to_f.send(n, @sol.delete_at(-1)))
    end
  end
    @sol[0]

    
  end

end


