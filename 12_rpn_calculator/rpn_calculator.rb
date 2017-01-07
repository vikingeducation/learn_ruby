class RPNCalculator
    
    def initialize
        @line = []
        @total = 0
    end
    
    def check
        if (@line[-2].nil?)
            raise "calculator is empty"
        end
    end
    
    def push(n)
        @line.push(n)
    end

    def pop
        @line.pop
    end
    
    def plus
        check
        
        @total = @line.pop + @line.pop
        @line.push(@total)
    end
    
    def minus
        check
        
        second = @line.pop
        first = @line.pop
        @total = first - second
        @line.push(@total)
    end
    
    def times
        check
        
        @total = @line.pop * @line.pop.to_f
        @line.push(@total)
    end
    
    def divide
        check
        
        denominator = @line.pop.to_f
        numerator = @line.pop
        @total = numerator / denominator
        @line.push(@total)
    end
    
    def value
        @total
    end
        
    def tokens(str)
        str.split.map do |element|
            if ["+", "/", "-", "*"].include? element
                element.to_sym
            else
                element.to_i
            end
        end
    end
    
    def evaluate(str)
        @line.clear #to prevent using previous evaluation's numbers - must be better way to do this
        
        tokens(str).each_with_index do |token, i|
            if token.is_a? Numeric
                @line.push(token)
            elsif token.is_a? Symbol
                case token
                    when :/
                        divide
                    when :*
                        times
                    when :+
                        plus
                    when :-
                        minus
                end
            end
        end
        
        value
    end
    
end