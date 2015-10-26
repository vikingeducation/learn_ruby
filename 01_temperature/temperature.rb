def ftoc ftemp
  # one degree fahrenheit is 5/9 of one degree celsius, and that the freezing point of water is 0 degrees celsius but 32 degrees fahrenheit.
  (ftemp.to_f - 32) * 5 / 9
end

def ctof ctemp
  ctemp.to_f * 9 / 5 + 32
end