class RPNCalculator
  attr_reader :value

  def initialize
    @stack = []
    @value = nil
  end

  def push(value)
    @stack.push(value)
  end

  def perform
    if @stack.length >= 2 and @value.nil?
      @value = yield @stack.pop, @stack.pop
    elsif @stack.length >= 1 and not @value.nil?
      @value = yield @value, @stack.pop
    else
      raise "calculator is empty"
    end
  end

  def reset
    @stack = []
    @value = nil
  end

  def plus
    perform { |b, a| a + b }
  end

  def minus
    perform { |b, a| a - b }
  end

  def divide
    perform { |b, a| a.to_f / b.to_f }
  end

  def times
    perform { |b, a| a * b }
  end
end