def ftoc(fahrenheit)
  c = (fahrenheit - 32).to_f * 5/9
  return c
end

def ctof(celcius)
  f = (celcius.to_f * 9/5) + 32
  return f
end