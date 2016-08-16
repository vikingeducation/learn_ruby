def ftoc(temp)
  (((temp.to_f - 32) * 5) / 9)
end

def ctof(temp)
  (((temp.to_f * 9) / 5) + 32)
end
