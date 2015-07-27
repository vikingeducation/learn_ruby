def ftoc (fahrenheit)
  celsius = (fahrenheit -32)*5/9
end

def ctof (celsius)

  fahrenheit = (celsius.to_f*9/5 +32).round(1)
end