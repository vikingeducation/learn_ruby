class Array

    def sum
        sum = 0
        self.each do |num|
            sum += num
        end
        sum
    end

    def square
        self.map { |num|  num**2 }
    end

    def square!
        self.map! { |num|  num**2 }
    end

end
