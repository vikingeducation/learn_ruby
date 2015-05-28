class Numeric
  @@numbers_to_words = {0 => 'zero',
                        1 => 'one',
                        2 => 'two',
                        3 => 'three',
                        4 => 'four',
                        5 => 'five',
                        6 => 'six',
                        7 => 'seven',
                        8 => 'eight',
                        9 => 'nine',
                        10 => 'ten',
                        11 => 'eleven',
                        12 => 'twelve',
                        13 => 'thirteen',
                        14 => 'fourteen',
                        15 => 'fifteen',
                        16 => 'sixteen',
                        17 => 'seventeen',
                        18 => 'eighteen',
                        19 => 'nineteen',
                        20 => 'twenty',
                        30 => 'thirty',
                        40 => 'forty',
                        50 => 'fifty',
                        60 => 'sixty',
                        70 => 'seventy',
                        80 => 'eighty',
                        90 => 'ninety'
                        }

  def in_words

    case self
    when 0..99
      tens(self)
    when 100..999
      hundred(self)
    when 1000..999_999
      thousand(self)
    when 1_000_000..999_999_999
      million(self)
    when 1_000_000_000..999_999_999_999
      billion(self)
    when 1_000_000_000_000..999_999_999_999_999
      trillion(self)
    end
  end

  def tens(num)
    return @@numbers_to_words[num] if num < 20

    num = num.to_s
    tens = num[0] + "0" #find correct tens place
    tens = tens.to_i
    result = @@numbers_to_words[tens]
    ones = num[1].to_i
    if ones != 0
    result = result + " " + @@numbers_to_words[ones]

    else
      result.strip
    end
  end

  def hundred(num)

    num_string = num.to_s
    result = ""
    if num.to_s.length > 2 && num_string[-3] != "0"
      result = @@numbers_to_words[num_string[-3].to_i] + " " + "hundred"
    end

    left_over = num_string.split(//).last(2).join("").to_i
    if left_over != 0
      result.strip + " " + tens(left_over)
 
    else
      result.strip
    end
  
  end

  def thousand(num)
    num_string = num.to_s
    num_string = "000" + num_string # for slice method below??
    result = ""
    thousands = num_string.slice(-6..-4).to_i
    if thousands != 0
      result = hundred(thousands).strip + " thousand" #send thousands count to hundreds method.
    end

    left_over = num.to_s.slice(-4..-1).to_i
    if left_over != 0
      result = result + " " + hundred(num)
      result.strip
    else
      result.strip
    end
   
  end

  def million(num)
    num_string = num.to_s
    num_string = "000" + num_string # for slice method below??
    result = ""
    millions = num_string.slice(-9..-7).to_i

    if millions != 0
      result = hundred(millions).strip + " million" #send thousands count to hundreds method.
    end

    left_over = num.to_s.slice(-7..-1).to_i
    if left_over != 0
      result = result + " " + thousand(num)
      result.strip
    else
      result.strip
    end

  end

  def billion(num)
    num_string = num.to_s
    num_string = "000" + num_string # for slice method below??
    result = ""
    billions = num_string.slice(-12..-10).to_i

    if billions != 0
      result = hundred(billions).strip + " billion" #send thousands count to hundreds method.
    end

    left_over = num.to_s.slice(-10..-1).to_i
    if left_over != 0
      result = result + " " + million(num)
      result.strip
    else
      result.strip
    end
  end

  def trillion(num)
    num_string = num.to_s
    num_string = "000" + num_string # for slice method below??
    result = ""
    trillions = num_string.slice(-15..-13).to_i

    if trillions != 0
      result = hundred(trillions).strip + " trillion" #send thousands count to hundreds method.
    end

    left_over = num.to_s.slice(-13..-1).to_i
    if left_over != 0
      result = result + " " + billion(num)
      result.strip
    else
      result.strip
    end
  end


end
