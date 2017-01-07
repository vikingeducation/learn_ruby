class Fixnum

  ONES = %w(nil one two three four five six seven eight nine)
  TENS = %w(nil ten twenty thirty forty fifty sixty seventy eighty ninety)
  TEENS = %w(ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)


  def convert(num, str = "")
    return str if num == 0
  
    if num / 100 > 0
      remainder = num % 100
      num = num / 100
      str += " " + ONES[num] + " hundred"
    elsif num.between?(10, 19)
      str += " " + TEENS[num-10]
      remainder = 0
    elsif num / 10 > 0
      remainder = num % 10
      num = num / 10
      str += " " + TENS[num]
    else
      remainder = 0
      str += " " + ONES[num]
    end

    convert(remainder, str)
  end


  def in_words(str="")
    converting = self
  return "zero" if converting == 0

  if converting / 1_000_000_000_000 > 0
    to_convert = converting % 1_000_000_000_000
    converting = converting / 1_000_000_000_000
    str += convert(converting) + " trillion"
  elsif converting / 1_000_000_000 > 0
    to_convert = converting % 1_000_000_000 
    converting = converting / 1_000_000_000
    str += convert(converting) + " billion"
  elsif converting / 1_000_000 > 0
    to_convert = converting % 1_000_000
    converting = converting / 1_000_000
    str += convert(converting) + " million"
  elsif converting / 1000 > 0
    to_convert = converting % 1000
    converting = converting / 1000
    str += convert(converting) + " thousand"
  else
    str += convert(converting)
    to_convert = 0
  end

    return str.strip if to_convert == 0
  to_convert.in_words(str)

  end

end 