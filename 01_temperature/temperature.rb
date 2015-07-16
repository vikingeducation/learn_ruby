def ftoc(temp)
  
  cel=(5*temp/9-32*5/9).to_i

end

def ctof(temp)
  if temp==0
    far=32
  else
   far=(9*temp/5.to_f+32)
  end
end



