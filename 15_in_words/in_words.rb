class Fixnum

  ONES = %w(one two three four five six seven eight nine)
  TEENS = %w(eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen ten)
  TENS = %w(ten twenty thirty forty fifty sixty seventy eighty ninety)
  BIG_NUMS = [
    [100, "hundred"],
    [1000, "thousand"],
    [1_000_000, "million"],
    [1_000_000_000, "billion"],
    [1_000_000_000_000, "trillion"],
  ]

  def in_words
    num = self
    output = ''

    return "zero" if num == 0

    BIG_NUMS.reverse.each do |limit, word|
      if num > (limit - 1)
        th_place = num / limit
        if th_place > 0
          output << "#{th_place.in_words} #{word}"
          num -= (th_place * limit)
          output << " " if num > 0
        end
      end
    end

    # conversions
    tens_place = num / 10
    ones_place = num - tens_place * 10

    if tens_place == 1
      output += TEENS[ones_place - 1]
      return output
    end

    if tens_place > 1
      output << TENS[tens_place - 1]
      output << " " if ones_place > 0
    end

    if ones_place > 0
      output << ONES[ones_place - 1]
    end

    output
  end

end
