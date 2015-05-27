class Fixnum
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
      result
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
      result + " " + tens(left_over)
    else
      result
    end
  
  end

  def thousand(num)
    num_string = num.to_s
    thousands = num_string[0..-4].to_i
    result = hundred(thousands).strip + " thousand" #send thousands count to hundreds method.

    left_over = num.to_s[-3..-1].to_i
    if left_over != 0
      result + " " + hundred(num)
    else
      result.strip
    end
   
  end

  def million(num)
    thousand(num)
  end

  def billion(num)
  end

  def trillion(num)
  end


end
