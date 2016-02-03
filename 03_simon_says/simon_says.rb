def echo(string)
    return string
end

def shout(string)
    return string.upcase
end

def repeat(string, num = 2)
    return num.times.collect{string}.join(" ")
end

def start_of_word(string, num)
    letters = string.split(//)
    return letters[0...num].join()
end

def first_word(string)
    sentence = string.split
    return sentence[0]
end

def titleize(string)
   return string.split.map{|w| w.capitalize}.join(" ")
end