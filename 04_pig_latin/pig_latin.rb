def translate(string)
  words = string.split(/\s/)
  words = words.map do |word|
    chars = word.split(//)
    until chars[0] =~ /[aeiou]/ do
      if chars[0] == "q" and chars[1] == "u"
        chars << chars.shift(2)
      else
        chars << chars.shift
      end
    end
    chars << "ay"
    chars.join
  end
  words.join(" ")
end
