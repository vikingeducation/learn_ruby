def ftoc (temp)
    
    return ((temp - 32) * 5/9).to_f
end

def ctof (temp)
    return (temp.to_f * 9/5 + 32.0)
end    