class RPNCalculator
  attr_accessor :stack

  def initialize
    @stack = []
  end

  def push(num)
    @stack.push(num)
  end

  def plus
    empty_array?
    b, a = populate_numbers
    result = a + b
    @stack.push(result)

    nil
  end

  def minus
    empty_array?
    b, a = populate_numbers
    result = a - b
    @stack.push(result)

    nil
  end

  def times
    empty_array?
    b, a = populate_numbers
    result = a * b
    @stack.push(result)

    nil
  end

  def divide
    empty_array?
    b, a = populate_numbers
    result = a.to_f / b.to_f
    @stack.push(result)

    nil
  end

  def empty_array?
    raise 'calculator is empty' if @stack == []
  end

  def populate_numbers
    b = stack.pop
    a = stack.pop
    [b, a]
  end

  def tokens(str)
    str.split.map! { |t| t[/\d/] ? t.to_i : t.to_sym }
  end

  def evaluate(str)
    temp_array = str.split
    temp_array.each do |t|
      if t[/\d/]
        @stack.push(t.to_i)
      else
        case t
        when '*'
          self.times
        when '/'
          self.divide
        when '+'
          self.plus
        when '-'
          self.minus
        end
      end
    end
    
    value
  end

  def value
    @stack[-1]
  end
end
