def ftoc(num)
    celsius = (num - 32) / 1.8
    return celsius.ceil
end

def ctof(num)
    fahrenheit = (num * 1.8) +32
    return fahrenheit
end