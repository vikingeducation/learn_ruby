

def reverser 
    words_string = yield
    word_arr = words_string.split(" ")
    reverse_string = ""
    word_arr.each { |w| reverse_string << w.reverse! }
    word_arr.join(" ")
end

def adder ( n = 1)
    input = yield
    input + n
end

def repeater ( reps = 1 )
    reps.times { yield }
end
