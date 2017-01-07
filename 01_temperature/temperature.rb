def ftoc(temp)
  # 1 degree F - 32 = 5/9 degree C
  return (temp - 32) * (5.0/9)
end



def ctof(temp)
  # 1 degree C = 9/5 degree F + 32
  return temp * (9/5.0) + 32
end
