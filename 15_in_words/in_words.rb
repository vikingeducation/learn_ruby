class Fixnum

  def in_words
    if self == 0
      'zero'
    else 
      self.in_words_rec
    end
  end
 
  def in_words_rec
 
    orders = %w(thousand million billion trillion)
    tens = %w(twenty thirty forty fifty sixty seventy eighty ninety)
    units = %w(one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
 
    s = ''
 
  # 000 000 000 million 000 thousand 000 hundred 000


    triplet_index = (self.to_s.length-1)/3
    triplet_num = triplet_index > 0 ? self/(1000**triplet_index) : self
    left = self - triplet_num * (1000 ** triplet_index)
 
    # hundreds
    hundreds_num= triplet_num / 100
    if hundreds_num > 0
      s += " #{units[hundreds_num-1]} hundred"
      triplet_num -= hundreds_num * 100
    end
 
    # tens til 20
    tens_num = triplet_num / 10
    if tens_num >= 2 # starting 20
      s += " #{tens[tens_num-2]}"
      triplet_num -= tens_num * 10
    end
 
    # units
    if triplet_num > 0
      s += " #{units[triplet_num-1]}"
    end
 
    # triplet order
    if triplet_index > 0
      s += " #{orders[triplet_index-1]}"
    end
 
    # rest of number
    if left > 0
      s += " #{left.in_words_rec}"
    end
 
    s.strip!
  end
 
end