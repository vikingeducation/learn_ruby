class Fixnum

  def in_words
    ones=%w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
    tens=%w(\  \  twenty thirty forty fifty sixty seventy eighty ninety)

    if self<20
      ones[self] 

    elsif self<100
       tens[self/10]+(self%10==0 ? "" : " " + (self%10).in_words)
    
    elsif self<1000
       ones[self/100]+" hundred" +(self%100==0 ? "": " " + (self%100).in_words)

    elsif self<1e6
       (self/1000).in_words+" thousand" + (self%1000==0 ? "": " "+ (self%1000).in_words)

    elsif self<1e9.to_i
       (self/1e6.to_i).in_words+" million" +(self%1e6.to_i==0? "": " " +(self%1e6.to_i).in_words)

    elsif self<1e12.to_i
       (self/1e9.to_i).in_words+ " billion" +(self%1e9.to_i==0 ? "": " "+ (self%1e9.to_i).in_words)

    else
     (self/1e12.to_i).in_words+" trillion" +(self%1e12.to_i==0 ? "": " "+(self%1e12.to_i).in_words)

  end
end
end
