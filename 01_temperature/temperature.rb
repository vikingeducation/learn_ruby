def ftoc(farenheit_temp)
  (farenheit_temp.to_f - 32.0 ) * 5.0/9.0
end

def ctof(celsius_temp)
  (celsius_temp.to_f) * 9.0/5.0 + 32.0
end