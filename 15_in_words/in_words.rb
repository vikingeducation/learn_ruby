class Fixnum

  def in_words
    number = self
    return "zero" if number == 0
    ones = %W{one two three four five six seven eight nine ten}
    teens = %W{ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen}
    tens = %W{ten twenty thirty forty fifty sixty seventy eighty ninety twenty}
    case number
    when 1..9
      return ones[number-1]
    when 10..19
      return teens[number-10]
    when 20..99
      if number % 10 == 0
        return tens[number/10 - 1]
      else
        return "#{tens[number/10 - 1]} #{ones[number%10 - 1]}"
      end
    when 100..999
      if number % 100 == 0
        return "#{ones[number/100-1]} hundred"
      elsif number % 10 == 0
        return "#{ones[number/100-1]} hundred #{tens[number/10 - 1]}"
      else
        return "#{ones[number/100-1]} hundred #{tens[number%100/10-1]} #{ones[number%10 - 1]}"
      end



    end
  

  end

end