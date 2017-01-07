#silly blocks

def reverser
    if block_given?
        yield.split.map do |word|
            word.reverse
        end * " "
    end
end

def adder(n=1)
    if block_given?
        yield + n
    end
end

def repeater(n=1)
    n.times do
        yield
    end
end