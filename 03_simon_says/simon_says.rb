
def echo(a_string)  
    a_string
end

def shout(a_string)  
    a_string.upcase
end

def repeat(a_string, n = 2 )  
    cum_string = a_string
    i = 2
    while i <= n
        cum_string  = cum_string + " " + a_string
        i += 1
    end
    cum_string
end

def start_of_word( a_string, n )
    a_string[0, n]
end

def first_word( a_string )
    word_arr = a_string.split(" ")
    word_arr[0]
end

def titleize( a_string )
    word_arr = a_string.split(" ")
    little_word_arr = ["the", "and", "to", "over", "a"]
    ret_arr = word_arr.map do |w| 
        if little_word_arr.include? w
            w
        else
            w.capitalize
        end
    end
    ret_arr.first.capitalize!
    ret_arr.join(" ")
end
