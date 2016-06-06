require 'pry'
class Fixnum
  def in_words
    number = self
    return 'zero' if number == 0
    ret_str = ""
    high = {1000 => "thousand", 1000000 => "million", 1000000000 => "billion", 1000000000000 => "trillion" }
    arr = split_num_chunks(number)
    arr.each do |num, div|
      if div != 1
        ret_str = ret_str + decode_3digits(num) + " " + high[div] + " "
      else
        if num != 0
          ret_str = ret_str + decode_3digits(num)
        end
      end
    end
    ret_str.strip
  end

  def decode_3digits(number)
    ones  = %w(zero one two three four five six seven eight nine)
    if number/100 > 0 && number%100 == 0
      ones[number/100] + " hundred"
    elsif number/100 > 0
      ones[number/100] + " hundred " + decode_2digits(number%100)
    else
      decode_2digits(number%100)
    end
  end

  def decode_2digits(number)
    ones  = %w(zero one two three four five six seven eight nine)
    teens = %w(ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
    tens  = %w(dummy dummy twenty thirty forty fifty sixty seventy eighty ninety)
    ret_str = ""
    digits = Math::log10(number).floor + 1
    if digits > 2
      number = number%100
      digits = Math::log10(number).floor + 1
    end
    case digits
    when 1
      ret_str += ones[number]
    when 2
      if number < 20 && number%10 < 10
        ret_str += teens[number%10]
      elsif number%10 == 0
        ret_str += tens[number/10]
      else
        ret_str += tens[number/10] + " " + ones[number%10]
      end
    end
    return ret_str
  end

  def split_num_chunks(num)
    arr = []
    digits = Math::log10(num).floor + 1
    divisor = 1000 ** ((digits-1)/3)
    while num >= 1000
      arr << [num/divisor, divisor]
      num = num%divisor
      divisor = divisor/1000
    end
    arr << [num, 1]
  end
end