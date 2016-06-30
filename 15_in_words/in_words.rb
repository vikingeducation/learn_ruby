class Fixnum

  def in_words
    case self
    when 0..12 then self.zeros
    when 13..19 then self.teens
    when 20..99 then
      if self%10 != 0
        ((self/10)*10).tens + " " + (self%10).zeros
      else
        self.tens
      end
    when 100..999 then self.hundreds
    when 1000..999999 then self.thousands
    when 1000000..999999999 then self.millions
    when 1000000000..999999999999 then self.billions
    when 1000000000000..999999999999999 then self.trillions
    end
  end

  def zeros
    case self
      when 0 then "zero"
      when 1 then "one"
      when 2 then "two"
      when 3 then "three"
      when 4 then "four"
      when 5 then "five"
      when 6 then "six"
      when 7 then "seven"
      when 8 then "eight"
      when 9 then "nine"
      when 10 then "ten"
      when 11 then "eleven"
      when 12 then "twelve"
    end
  end

  def teens
    case self
      when 13 then "thirteen"
      when 14 then "fourteen"
      when 15 then "fifteen"
      when 16 then "sixteen"
      when 17 then "seventeen"
      when 18 then "eighteen"
      when 19 then "nineteen"
    end
  end

  def tens
    case self
    when 20 then "twenty"
    when 30 then "thirty"
    when 40 then "forty"
    when 50 then "fifty"
    when 60 then "sixty"
    when 70 then "seventy"
    when 80 then "eighty"
    when 90 then "ninety"
    end
  end

  def hundreds
    s = ""
    s += (self/100).zeros + " hundred"
    s += " " + (self%100).in_words unless self%100 == 0
    s
  end

  def thousands
    s = ""
    s += (self/1000).in_words + " thousand"
    s += " " + (self%1000).in_words if self%1000 != 0
    s
  end

  def millions
    s = ""
    s += (self/1000000).in_words + " million"
    s+= " " + (self%1000000).in_words if self%1000000 != 0
    s
  end

  def billions
    s = ""
    s += (self/1000000000).in_words + " billion"
    s+= " " + (self%1000000000).in_words if self%1000000 != 0
    s
  end

  def trillions
    s = ""
    s += (self/1000000000000).in_words + " trillion"
    s+= " " + (self%1000000000000).in_words if self%1000000000 != 0
    s
  end

end
