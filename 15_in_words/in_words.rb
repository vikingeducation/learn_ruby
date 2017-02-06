class Fixnum
  def in_words
    numbers_in_words = {}
    numbers_in_words[0] = 'zero'
    numbers_in_words[1] = 'one'
    numbers_in_words[2] = 'two'
    numbers_in_words[3] = 'three'
    numbers_in_words[4] = 'four'
    numbers_in_words[5] = 'five'
    numbers_in_words[6] = 'six'
    numbers_in_words[7] = 'seven'
    numbers_in_words[8] = 'eight'
    numbers_in_words[9] = 'nine'
    numbers_in_words[10] = 'ten'
    numbers_in_words[11] = 'eleven'
    numbers_in_words[12] = 'twelve'
    numbers_in_words[13] = 'thirteen'
    numbers_in_words[14] = 'fourteen'
    numbers_in_words[15] = 'fifteen'
    numbers_in_words[16] = 'sixteen'
    numbers_in_words[17] = 'seventeen'
    numbers_in_words[18] = 'eighteen'
    numbers_in_words[19] = 'nineteen'
    numbers_in_words[20] = 'twenty'
    numbers_in_words[30] = 'thirty'
    numbers_in_words[40] = 'forty'
    numbers_in_words[50] = 'fifty'
    numbers_in_words[60] = 'sixty'
    numbers_in_words[70] = 'seventy'
    numbers_in_words[80] = 'eighty'
    numbers_in_words[90] = 'ninety'
    numbers_in_words[100] = 'hundred'
    numbers_in_words[1_000] = 'thousand'
    numbers_in_words[1_000_000] = 'million'
    numbers_in_words[1_000_000_000] = 'billion'
    numbers_in_words[1_000_000_000_000] = 'trillion'

    ones = self % 10
    tens = self % 100 - ones
    under_20 = self % 20
    hundreds = self % 1_000 / 100
    thousands = self % 1_000_000 / 1_000
    millions = self % 1_000_000_000 / 1_000_000
    billions = self % 1_000_000_000_000 / 1_000_000_000
    trillions = self % 1_000_000_000_000_000 / 1_000_000_000_000

    return numbers_in_words[self] if self < 20 && self >= 0
    return numbers_in_words[self] if self < 100 && self % 10 == 0 && self > 0

    words = []
    words.push("#{trillions.in_words} trillion") if trillions > 0
    words.push("#{billions.in_words} billion") if billions > 0
    words.push("#{millions.in_words} million") if millions > 0
    words.push("#{thousands.in_words} thousand") if thousands > 0
    words.push("#{hundreds.in_words} hundred") if hundreds > 0
    words.push("#{tens.in_words}") if tens >= 20
    words.push("#{ones.in_words}") if tens >= 20 && ones > 0
    words.push("#{under_20.in_words}") if tens < 20 && under_20 > 0
    words.join(" ")
  end
end