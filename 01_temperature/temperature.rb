#farenheigh to celsius
def ftoc(temperature)
  celsius = (temperature.to_f - 32.0) * (5.0/9.0)
end


#celsius to fahrenheit
def ctof(temperature)
  fahrenheight = (temperature.to_f * (9.0/5.0)) + 32.0
end