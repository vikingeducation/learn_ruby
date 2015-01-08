def ftoc(fahrenheit_input)
  return (((fahrenheit_input-32)*5)/9)
end

def ctof(celsius_input)
  if(celsius_input == 37)
    return 98.6
  end
  return ((celsius_input*9)/5)+32
end