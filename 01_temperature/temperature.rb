def ftoc(temp)
  float_temp = temp.to_f
  puts float_temp
  (5.0 / 9.0) * (float_temp - 32.0)
end

def ctof(temp)
  float_temp = temp.to_f
  (1.8 * float_temp) + 32.0
end