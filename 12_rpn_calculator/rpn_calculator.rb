class RPNCalculator

    def initialize
        @stack = []
    end

    def push num
         @stack.push num
    end


    def plus
        right, left = pop_right_and_left
        @stack.push left.to_f + right.to_f
    end

    def minus
        right, left = pop_right_and_left
        @stack.push left.to_f - right.to_f
    end

    def times
        right, left = pop_right_and_left
        @stack.push left.to_f * right.to_f
    end

    def divide
        right, left = pop_right_and_left
        @stack.push left.to_f / right.to_f
    end


    def value
        @stack.last
    end


    def tokens string
        array = []
        chars = string.split
        chars.each do |char|
            if char.to_i != 0
                array << char.to_i
            else
                array << char.to_sym
            end
        end
        array
    end

    def evaluate string
        chars = string.split
        chars.each do |char|
            if char.to_i != 0
                push char.to_i
            else
                case char
                when "+"
                    plus
                when "-"
                    minus
                when "*"
                    times
                when "/"
                    divide
                end
            end
        end
        value
    end


    private
        def pop_right_and_left
            raise "calculator is empty" if @stack.size < 1
            return @stack.pop, @stack.pop
        end

end
