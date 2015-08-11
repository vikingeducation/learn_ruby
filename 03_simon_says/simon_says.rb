#Simon says
def echo(str)
    str
end

def shout(str)
    str.upcase
end

def repeat(str, times=2)
    ((str + " ")*times).strip
end

def start_of_word(str, index)
    str[0,index]
end

def first_word(str)
    str.split[0]
end

def titleize(str)
    little = ["the", "and", "over"]
    
    str.split.each_with_index do |word, index| 
        if(!little.include?(word) || index == 0)
            word.capitalize!
        end
    end * " "
end
    

    