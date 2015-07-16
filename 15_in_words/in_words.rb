class Fixnum
  def in_words
    below20 = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    tens = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
    
    case self
    when 0..19
      s=below20[self]
    when 20..99
      s=self%10 == 0 ? tens[self/10-2] \
      : tens[self/10-2]+" "+(self%10).in_words
    when 100..999
      s=self%100 == 0 ? below20[self/100]+" hundred" \
      : below20[self/100]+" hundred "+(self%100).in_words
    when 1000..999999
      s=self%1000 == 0 ? (self/1000).in_words+" thousand" \
      : (self/1000).in_words+" thousand "+(self%1000).in_words
    when 1_000_000..999_999_999
      s=self%1_000_000 == 0 ? (self/1_000_000).in_words+" million" \
      : (self/1_000_000).in_words+" million "+(self%1_000_000).in_words
    when 1_000_000_000..999_999_999_999
      s=self%1_000_000_000 == 0 \
      ? (self/1_000_000_000).in_words+" billion"
      : (self/1_000_000_000).in_words+" billion "+(self%1_000_000_000).in_words
    when 1_000_000_000_000..999_999_999_999_999
      s=self%1_000_000_000_000 == 0 \
      ? (self/1_000_000_000_000).in_words+" trillion"
      : (self/1_000_000_000_000).in_words+" trillion "+(self%1_000_000_000_000).in_words
    end
    s
  end

end