def ftoc(temp)
  temp = (temp.to_f - 32.0) * (5.0/9.0) 
end

def ctof(temp)
  temp = (temp.to_f * 9.0 / 5.0) + 32
end
