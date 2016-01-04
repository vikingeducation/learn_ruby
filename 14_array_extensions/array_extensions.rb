

Array.class_eval do

    def sum
        self.reduce(0) { |total, elt|  total + elt }
    end

    def square
        self.map { |elt|  elt * elt }
    end

    def square!
        self.map! { |elt|  elt * elt }
    end
end

