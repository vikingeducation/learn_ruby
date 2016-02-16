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
    un_titled = ["the", "and", "or", "over"]
    title = string.split
    proper_case = []
    title.each_with_index do |word, index|
        word = word.capitalize
        if(un_titled.include?(word.downcase) && index != 0)
            word = word.downcase
        end
        proper_case.push(word)
    end
   return proper_case.join(" ")
end