def ftoc(f_temp)
  c_temp = (f_temp - 32) * 5 / 9
end

def ctof(c_temp)
  f_temp = c_temp.to_f * 9 / 5 + 32.0
end