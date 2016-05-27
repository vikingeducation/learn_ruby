def reverser
    yield.split.map { |words| words.reverse }.join " "
end

def adder add=1
    yield + add
end

def repeater repeats=1
    (0...repeats).each do
        yield
    end
end
