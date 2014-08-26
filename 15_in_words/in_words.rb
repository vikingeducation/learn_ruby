class Integer

def in_words
  return "zero" if self == 0

  number = self
  result = ""

  if number.between?(1_000_000_000_000, 999_999_999_999_999)
    result += (number/1_000_000_000_000).hundreds_to_singles
    result += " trillion"
    number = number % 1_000_000_000_000
    result += " " if number > 0
  end

  if number.between?(1_000_000_000, 999_999_999_999)
    result += (number/1_000_000_000).hundreds_to_singles
    result += " billion"
    number = number % 1_000_000_000
    result += " " if number > 0
  end

  if number.between?(1_000_000, 999_999_999)
    result += (number/1_000_000).hundreds_to_singles
    result += " million"
    number = number % 1_000_000
    result += " " if number > 0
  end

  if number.between?(1000, 999_999)
    result += (number/1000).hundreds_to_singles
    result += " thousand"
    number = number % 1000
    result += " " if number > 0
  end

  result += number.hundreds_to_singles
  result
end


def hundreds_to_singles
  number = self
  result = ""
  if number.between?(100, 999)
    case number / 100
    when 9 then result += "nine hundred"
    when 8 then result += "eight hundred"
    when 7 then result += "seven hundred"
    when 6 then result += "six hundred"
    when 5 then result += "five hundred"
    when 4 then result += "four hundred"
    when 3 then result += "three hundred"
    when 2 then result += "two hundred"
    when 1 then result += "one hundred"
    end

    number = number % 100
    result += " " if number > 0

  end


  if number.between?(20,99)
    case number / 10
    when 9 then result += "ninety"
    when 8 then result += "eighty"
    when 7 then result += "seventy"
    when 6 then result += "sixty"
    when 5 then result += "fifty"
    when 4 then result += "forty"
    when 3 then result += "thirty"
    when 2 then result += "twenty"
    end

    number = number % 10
    result += " " if number > 0
  end

  if number.between?(10,19)
    case number
    when 10 then result += "ten"
    when 11 then result += "eleven"
    when 12 then result += "twelve"
    when 13 then result += "thirteen"
    when 14 then result += "fourteen"
    when 15 then result += "fifteen"
    when 16 then result += "sixteen"
    when 17 then result += "seventeen"
    when 18 then result += "eighteen"
    when 19 then result += "nineteen"
    end
  end

  case number
  when 1 then result += "one"
  when 2 then result += "two"
  when 3 then result += "three"
  when 4 then result += "four"
  when 5 then result += "five"
  when 6 then result += "six"
  when 7 then result += "seven"
  when 8 then result += "eight"
  when 9 then result += "nine"
  end

  result
end

end
