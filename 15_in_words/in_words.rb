class Fixnum

  def in_words
    number = self
    ones = %W{zero one two three four five six seven eight nine ten}
    teens = %W{ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen}
    tens = %W{zero ten twenty thirty forty fifty sixty seventy eighty ninety twenty}
    case number
    when 0..9
      return ones[number]
    when 10..19
      return teens[number-10]
    when 20..99
      if number % 10 == 0
        return tens[number/10]
      else
        return "#{tens[number/10]} #{ones[number%10]}"
      end
      
    when 100..999
      if number % 100 == 0
        return "#{ones[number/100]} hundred"
      else
        return "#{ones[number/100]} hundred " + (number % 100).in_words
      end

    when 1000..999999
      if number % 1000 == 0
        return "#{ones[number/1000]} thousand"
      else
        return (number / 1000).in_words + " thousand " + (number % 1000).in_words
      end

    when 1000000..999999999
      if number % 1000000 == 0
        return "#{ones[number/1000000]} million"
      else
        return (number / 1000000).in_words + " million " + (number % 1000000).in_words
      end

    when 1000000000..999999999999
      if number % 1000000000 == 0
        return "#{ones[number/1000000000]} billion"
      else
        return (number / 1000000000).in_words + " billion " + (number % 1000000000).in_words
      end

    when 1000000000000..999999999999999
      if number % 1000000000000 == 0
        return "#{ones[number/1000000000000]} trillion"
      else
        return (number / 1000000000000).in_words + " trillion " + (number % 1000000000000).in_words
      end


    end

  end

end