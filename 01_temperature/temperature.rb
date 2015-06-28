

  def ftoc(temp)
      ((temp.to_f - 32) * (5.0/9.0)).to_i
  end


  def ctof(temp)

      ((temp.to_f * (9.0/5.0).round(2)) + 32).round(1)
  end

