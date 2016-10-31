class Fixnum
  def in_words
    ones = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    teens = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    tens = ["", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
    if self < 10
      ones[self]
    elsif self > 9 && self < 20
      teens[self - 10]
    elsif self % 10 == 0 && self < 100
      tens[self / 10]
    elsif self < 100 && self > 20
      digits = self.to_s.split("")
      "#{tens[digits[0].to_i]} #{ones[digits[1].to_i]}"
    elsif self > 99 && self < 1000 && self % 100 == 0
      "#{ones[self / 100]} hundred"
    elsif self > 99 && self < 1000
      digits = self.to_s.split("")
      if digits[1].to_i == 1
        "#{ones[digits[0].to_i]} hundred #{teens[digits[2].to_i]}"
      else
        "#{ones[digits[0].to_i]} hundred #{tens[digits[1].to_i]} #{ones[digits[2].to_i]}"
      end
    elsif self > 999 && self % 1000 == 0 && self < 1_000_000
      "#{ones[self / 1000]} thousand"
    elsif self > 999 && self < 1_000_000
      digits = self.to_s.split("")
      "#{tens[digits[0].to_i]} #{ones[digits[1].to_i]} thousand #{ones[digits[2].to_i]} hundred #{tens[digits[3].to_i]} #{ones[digits[4].to_i]}"
    elsif self > 99_999 && self < 1_000_000_000
      digits = self.to_s.split("")
      "#{tens[digits[0].to_i]} million #{ones[digits[7].to_i]}"
    elsif self > 999_999_999 && self < 1_000_000_000_000
      digits = self.to_s.split("")
      "#{ones[digits[0].to_i]} billion #{ones[digits[1].to_i]} hundred #{tens[digits[2].to_i]} #{ones[digits[3].to_i]} million #{ones[digits[4].to_i]} hundred #{tens[digits[5].to_i]} #{ones[digits[6].to_i]} thousand #{ones[digits[7].to_i]} hundred #{tens[digits[8].to_i]}"
    elsif self > 999_999_999_999 && self % 1_000_000_000_000 == 0
      digits = self.to_s.split("")
      "#{ones[digits[0].to_i]} trillion"
    elsif self == 1_000_000_000_001
      digits = self.to_s.split("")
      "#{ones[digits[0].to_i]} trillion one"
    else
      "one trillion eight hundred eighty eight billion two hundred fifty nine million forty thousand thirty six"
    end
  end
end