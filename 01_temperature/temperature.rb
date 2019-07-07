#write your code here
def ctof(temperature)
    temperature = (temperature * 9 / 5.to_f) + 32
end

def ftoc(temperature)
    temperature = (temperature - 32) * 5 / 9
end