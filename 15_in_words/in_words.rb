class Fixnum
  def in_words
    digit = self
    case digit
    when 1000000000000..999999999999999
      trillions(digit)
    when 1000000000..999999999999
      billions(digit)
    when 1000000..999999999
      millions(digit)
    when 1000..999999
      thousands(digit)
    when 100..999
      hundreds(digit)
    when 20..99
      tens(digit)
    when 10..19
      teens(digit)
    when 0..9
      single_digits(digit)
    end
  end

  def single_digits(number)
    if number == 0
      return "zero"
    elsif number == 1
      return "one"
    elsif number == 2
      return "two"
    elsif number == 3
      return "three"
    elsif number == 4
      return "four"
    elsif number == 5
      return "five"
    elsif number == 6
      return "six"
    elsif number == 7
      return "seven"
    elsif number == 8
      return "eight"
    elsif number == 9
      return "nine"
    else
      return "something has gone wrong"
    end
  end

  def teens(number)
    t = "teen"
    if number == 10
      return "ten"
    elsif number == 11
      return "eleven"
    elsif number == 12
      return "twelve"
    elsif number == 13
      return "thir#{t}"
    elsif number == 14
      return "four#{t}"
    elsif number == 15
      return "fif#{t}"
    elsif number == 16
      return "six#{t}"
    elsif number == 17
      return "seven#{t}"
    elsif number == 18
      return "eigh#{t}"
    elsif number == 19
      return "nine#{t}"
    end
  end

  def tens(number)
    remander = number%10
    t = "ty"
    case number
    when 20..29
      if remander == 0
        return "twenty"
      else
        return "twenty #{single_digits(remander)}"
      end
    when 30..39
      if remander == 0
        return "thir#{t}"
      else
        return "thir#{t} #{single_digits(remander)}"
      end
    when 40..49
      if number == 40
        return "for#{t}"
      else
        return "for#{t} #{single_digits(remander)}"
      end
    when 50..59
      if number == 50
        return "fif#{t}"
      else 
        return "fif#{t} #{single_digits(remander)}"
      end
    when 60..69
      if number == 60
        return "six#{t}"
      else
        return "six#{t} #{single_digits(remander)}"
      end
    when 70..79
      if number == 70
        return "seven#{t}"
      else
        return "seven#{t} #{single_digits(remander)}"
      end
    when 80..89
      if number == 80
        return "eigh#{t}"
      else
        return "eigh#{t} #{single_digits(remander)}"
      end
    when 90..99
      if number == 90
        return "nine#{t}"
      else
        return "nine#{t} #{single_digits(remander)}"
      end
    end
  end

  def hundreds(number)
    leftovers = number - (number/100 * 100)
    hundreds = "#{single_digits(number/100)} hundred"
    case leftovers
    when 20..99
      return "#{hundreds} #{tens(leftovers)}"
    when 10..19
      return "#{hundreds} #{teens(leftovers)}"
    when 1..9
      return "#{hundreds} #{single_digits(leftovers)}"
    when 0
      return "#{hundreds}"
    end
  end

  def thousands(number)
    leftovers = number % 1000
    thousands = ""
    case number
    when 1000..9999
      thousands = "#{single_digits(number/1000)} thousand"
    when 10000..19000
      thousands = "#{teens(number/1000)} thousand"
    when 20000..99000
      thousands = "#{tens(number/1000)} thousand"
    when 100000..999999
      thousands = "#{hundreds(number/1000)} thousand"
    end

    case leftovers
    when 0
      return "#{thousands}"
    when 1..9
      return "#{thousands} #{single_digits(leftovers)}"
    when 10..19
      return "#{thousands} #{teens(leftovers)}"
    when 20..99
      return "#{thousands} #{tens(leftovers)}"
    when 100..999
      return "#{thousands} #{hundreds(leftovers)}"
    end
  end

  def millions(number)
    leftovers = number%1000000
    millions = ""
    case number
    when 1000000..9999999
      millions = "#{single_digits(number/1000000)} million"
    when 10000000..19999999
      millions = "#{teens(number/1000000)} million"
    when 20000000..99999999
      millions = "#{tens(number/1000000)} million"
    when 100000000..999999999
      millions = "#{hundreds(number/1000000)} million"
    end
    
    case leftovers
    when 0
      return "#{millions}"
    when 1000..999999
      return "#{millions} #{thousands(leftovers)}"
    when 100..999
      return "#{millions} #{hundreds(leftovers)}"
    when 20..99
      return "#{millions} #{teens(leftovers)}"
    when 10..19
      return "#{millions} #{tens(leftovers)}"
    when 1..9
      return "#{millions} #{single_digits(leftovers)}"
    end
  end

  def billions(number)
    leftovers = number%1000000000
    billions = ""
    case number
    when 1000000000..9999999999
      billions = "#{single_digits(number/1000000000)} billion"
    when 10000000000..19999999999
      billions = "#{teens(number/1000000000)} billion"
    when  20000000000..99999999999
      billions = "#{tens(number/1000000000)} billion"
    when 100000000000..999999999999
      billions = "#{hundreds(number/1000000000)} billion"
    end
    
    case leftovers
    when 0
      return "#{billions}"
    when 1000000..999999999
      return "#{billions} #{millions(leftovers)}"
    when 1000..999999
      return "#{billions} #{thousands(leftovers)}"
    when 100..999
      return "#{billions} #{hundreds(leftovers)}"
    when 20..99
      return "#{billions} #{teens(leftovers)}"
    when 10..19
      return "#{billions} #{tens(leftovers)}"
    when 1..9
      return "#{billions} #{single_digits(leftovers)}"
    end
  end

  def trillions(number)
    leftovers = number%1000000000000
    trillions = ""
    case number
    when 1000000000000..9999999999999
      trillions = "#{single_digits(number/1000000000000)} trillion"
    when 10000000000000..19999999999999
      trillions = "#{teens(number/1000000000000)} trillion"
    when  20000000000000..99999999999999
      trillions = "#{tens(number/1000000000000)} trillion"
    when 100000000000000..999999999999999
      trillions = "#{hundreds(number/1000000000000)} trillion"
    end

    case leftovers
    when 0
      return "#{trillions}"
    when 1000000000..999999999999
      return "#{trillions} #{billions(leftovers)}"
    when 1000000..999999999
      return "#{trillions} #{millions(leftovers)}"
    when 1000..999999
      return "#{trillions} #{thousands(leftovers)}"
    when 100..999
      return "#{trillions} #{hundreds(leftovers)}"
    when 20..99
      return "#{trillions} #{teens(leftovers)}"
    when 10..19
      return "#{trillions} #{tens(leftovers)}"
    when 1..9
      return "#{trillions} #{single_digits(leftovers)}"
    end
  end

end
