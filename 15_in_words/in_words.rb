class Fixnum

  def in_words

    a = (self%1_000) #hundreds
    b = (self%1_000_000)/1_000 #thousands
    c = (self%1_000_000_000)/1_000_000 #millions
    d = (self%1_000_000_000_000)/1_000_000_000 #billions
    e = (self%1_000_000_000_000_000)/1_000_000_000_000 #trillions

    output = Array.new

    unless e == 0
      output << e.in_words_group
      output << "trillion"
    end

    unless d == 0
      output << d.in_words_group
      output << "billion"
    end

    unless c == 0
      output << c.in_words_group
      output << "million"
    end

    unless b == 0
      output << b.in_words_group
      output << "thousand"
    end

    unless a == 0 && self > 0
      output << a.in_words_group
    end

    output.join(" ")

  end


##############################################
#          GROUP FOR HANDLING                #
#          ANY 3-DIGIT COMBO                 #
##############################################

  def in_words_group
    if self < 100
      self.in_words_under_100
    else
      self.in_words_3_digits
    end
  end

  def in_words_under_100
    if self < 20
      self.in_words_upto_19
    else
      self.in_words_20_to_99
    end
  end

  def in_words_upto_19
    if self < 10
      self.singles
    else
      self.teens
    end
  end

  def in_words_20_to_99
    first_digit = self % 10
    second_digit = self - first_digit
    if first_digit == 0
      second_digit.tens
    else
      second_digit.tens + " " + first_digit.singles
    end
  end

  def in_words_3_digits
    first_2_digits = self % 100
    third_digit = self / 100
    if first_2_digits == 0
      third_digit.singles + " hundred"
    else
      third_digit.singles + " hundred " + first_2_digits.in_words_under_100
    end
  end

###################################################


  def singles
    case self
      when 0
        "zero"
      when 1
        "one"
      when 2
        "two"
      when 3
        "three"
      when 4
        "four"
      when 5
        "five"
      when 6
        "six"
      when 7
        "seven"
      when 8
        "eight"
      when 9
        "nine"
      else "error"
    end
  end



  def teens
    case self
      when 10
        "ten"
      when 11
        "eleven"
      when 12
        "twelve"
      when 13
        "thirteen"
      when 14
        "fourteen"
      when 15
        "fifteen"
      when 16
        "sixteen"
      when 17
        "seventeen"
      when 18
        "eighteen"
      when 19
        "nineteen"
      else "error"
    end
  end



  def tens
    case self
      when 20
        "twenty"
      when 30
        "thirty"
      when 40
        "forty"
      when 50
        "fifty"
      when 60
        "sixty"
      when 70
        "seventy"
      when 80
        "eighty"
      when 90
        "ninety"
      else "error"
    end
  end

end