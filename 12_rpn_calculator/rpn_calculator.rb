

class RPNCalculator



    def initialize
        @stack = []
    end

    def push (value)
        @stack << value
    end

    def pop
        a = @stack.pop
        raise "calculator is empty" if a.nil?
        a
    end

    def plus
        a = pop
        b= pop
        @stack << (a + b)
    end

    def minus
        a = pop
        b= pop
        @stack << (b - a)
    end

    def value
        @stack[-1]
    end

    def times
        a = pop
        b= pop
        @stack << (b * a)        
    end

    def divide
        a = pop
        b= pop
        @stack << ( b / a.to_f )        
    end

end

