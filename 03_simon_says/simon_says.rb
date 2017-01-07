def echo (message)
    return message
end

def shout (message)
    return message.upcase
end

def repeat (message,count=2)
    message = (message+" ")*count
    return message.strip
end

def start_of_word (message,number)
    i =0
    result=""
    number.times do
        result = result + message[i]
        i= i+1
    end
    return result
end

def first_word (message)
    result = message.split
    return result[0]
end

def titleize (message)
    message = message.split
    message.each do |a|
        if !["and","over","the"].include?(a)
            a[0] = a[0].capitalize
        end
    end
    message = message.join(" ")
    message[0] = message[0].capitalize
    result = message
    return result
    
end