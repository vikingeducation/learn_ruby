def echo msg
    msg
end

def shout msg
    msg.upcase
end

def repeat msg, num=2
    ("#{msg} " * num).strip
end

def start_of_word msg, chars
    msg[0...chars]
end

def first_word msg
    msg.split[0]
end

def titleize msg
    words = msg.split
    words[0].capitalize!
    words.map { |word| word == "and" || word == "over" || word == "the" ? word : word.capitalize }.join " "
end
