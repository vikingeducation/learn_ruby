class Integer
  ONES = %w(#{nil} one two three four five six seven eight nine).freeze
  TEENS = %w(ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen).freeze
  TENS = %w(ten twenty thirty forty fifty sixty seventy eighty ninety).freeze

  def translate(number, str = '', last = false)
    return str if number == 0
    if number / 100 > 0
      remainder = number % 100
      number /= 100
      str += ' ' + ONES[number] + ' hundred'
    elsif number.between?(10, 19)
      str += if last
               ' ' + TEENS[number - 10]
             else
               ' ' + TEENS[number - 10]
             end
      return str
    elsif number / 10 > 0
      remainder = number % 10
      number /= 10
      str += if last
               ' ' + TENS[number - 1]
             else
               ' ' + TENS[number - 1]
             end
    else
      str += ' ' + ONES[number]
      remainder = 0
    end
    translate(remainder, str, true)
  end

  def in_words(str = '')
    now_writing = self
    return 'zero' if now_writing == 0
    case
    when now_writing / 1_000_000_000_000 > 0
      to_write = now_writing % 1_000_000_000_000
      now_writing /= 1_000_000_000_000
      str += translate(now_writing) + ' trillion'
    when now_writing / 1_000_000_000 > 0
      to_write = now_writing % 1_000_000_000
      now_writing /= 1_000_000_000
      str += translate(now_writing) + ' billion'
    when now_writing / 1_000_000 > 0
      to_write = now_writing % 1_000_000
      now_writing /= 1_000_000
      str += translate(now_writing) + ' million'
    when now_writing / 1000 > 0
      to_write = now_writing % 1000
      now_writing /= 1000
      str += translate(now_writing) + ' thousand'
    else
      str += translate(now_writing)
      return str[1..-1]
    end
    return str[1..-1] if to_write == 0
    to_write.in_words(str)
  end
end
