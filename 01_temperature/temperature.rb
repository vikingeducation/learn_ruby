# Convert celsius to farenheit 
def ftoc(n)
  ((n - 32) * 5) / 9
end

# Convert farenheit to celsius
def ctof(n)
  ((n.to_f * 9) / 5) + 32
end