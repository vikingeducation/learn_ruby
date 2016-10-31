class Fixnum
  def in_words
    case  
    when self >= 1_000_000_000_000 then hundreds_and_up(1_000_000_000_000)
    when self >= 1_000_000_000 then hundreds_and_up(1_000_000_000)
    when self >= 1_000_000 then hundreds_and_up(1_000_000)
    when self >= 1000 then hundreds_and_up(1_000)
    when self >= 100 then hundreds_and_up(100)
    when self/10 > 1 #tens
      return tens(self/10) if self%10 == 0 
      return tens(self/10) + " " + singles(self%10)
    when self/10 == 1 # teens 
      return 'ten' if self == 10
      return 'eleven' if self == 11
      return 'twelve' if self == 12 
      return teen_beginnings(self%10) + 'teen'
    when self/10 == 0
      return singles(self)
    else 
      return "Sorry, too high!"
    end 
  end

  def descriptor(place)
    return " trillion" if place == 1_000_000_000_000
    return " billion" if place == 1_000_000_000
    return " million" if place == 1_000_000
    return " thousand" if place == 1000
    return " hundred"
  end

  def hundreds_and_up(place)
    return (self/place).in_words + descriptor(place) if self%place == 0
    return (self/place).in_words + descriptor(place) + " " + (self%place).in_words
  end

  def singles(n)
    return 'zero' if n == 0
    return 'one' if n == 1
    return 'two' if n == 2 
    return 'three' if n == 3
    return 'four' if n == 4
    return 'five' if n == 5
    return 'six' if n == 6
    return 'seven' if n == 7 
    return 'eight' if n == 8
    return 'nine' if n == 9
  end

  def teen_beginnings(n)
    return 'thir' if n == 3
    return 'four' if n == 4
    return 'fif' if n == 5
    return 'eigh' if n == 8
    return singles(n)
  end

  def tens(n)
    return 'twenty' if n == 2 
    return 'thirty' if n == 3
    return 'forty' if n == 4
    return 'fifty' if n == 5
    return 'sixty' if n == 6
    return 'seventy' if n == 7 
    return 'eighty' if n == 8
    return 'ninety' if n == 9
  end
end