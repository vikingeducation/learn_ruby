#write your code here
def echo(greeting)
    greeting
end

def shout(greeting)
    greeting.upcase
end

def repeat(greeting, number = 1)
    if number == 1
        repeated_string = "#{greeting}"
    else
        repeated_string = ""
    end

    number.times {repeated_string = repeated_string + ' ' + greeting}
    repeated_string.strip
end

def start_of_word(word, number_of_letters)
    n = 0
    letters = ''
    while n < number_of_letters
        letters += word[n]
        n += 1
    end
    letters
end

def first_word(sentence)
    sentence_array = sentence.split
    sentence_array[0]
end

def titleize(sentence)
    sentence = sentence.split
    little_words = ['a', 'and', 'the', 'an']
    sentence.each do |word|
        if  little_words.include? word
            if word == sentence[0]
                word.capitalize!
            else
                word = word
            end
        else
            word.capitalize!
        end
    end
    sentence.join(' ')
end
