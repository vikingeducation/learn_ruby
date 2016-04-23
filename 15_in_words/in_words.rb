module InWords

  def in_words
    number_given = self
    return "zero" if self < 1
    stringified = ""

    big_numbers = [[1_000_000_000_000, "trillion"], [1_000_000_000, "billion"], [1_000_000, "million"], [1_000, "thousand"], [100, "hundred"]]

    big_numbers.each do |number, label|
      if number_given >= number
        base = number_given / number
        stringified << "#{base.in_words} #{label}"
        number_given -= (number_given / number) * number
        if number_given == 0
          stringified
        else
          stringified << " "
        end
      end
    end

    ten = number_given / 10
    one = number_given - (10 * ten)
    ones = %w(one two three four five six seven eight nine)
    tens = %w(ten twenty thirty forty fifty sixty seventy eighty ninety)
    teens = %w(eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

    if (1..9) === number_given
      stringified << ones[number_given - 1]
    end
    if (11..19) === number_given
      stringified << teens[number_given - 11]
    end
    if number_given == 10 || number_given >= 20
      stringified << tens[ten-1]
      if one > 0
        stringified << " #{ones[one - 1]}"
      end
    end
    stringified
  end


end

class Fixnum
  include InWords
end

class Bignum
  include InWords
end
