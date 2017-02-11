def ftoc(degrees)
  (degrees - 32).to_f * 5.0 / 9.0
end

def ctof(d)
  d * 9.0 / 5.0 + 32.0
end
