def translate(string)
  string_array = string.split(" ")
  string_array.each do |word|
    case word
    when  /^[aeiou]/i
      word << "ay"
    when /^[q][u]/i
      word.slice! "qu"
      word << "qu" << "ay"
    when /^[a-z][q][u]/i
      first_letters = word.scan(/^[a-z][q][u]/i)[0]
      word.slice! first_letters
      word << first_letters << "ay"
    when /^[^aeiou]+/i
      first_letters = word.scan(/^[^aeiou]+/i)[0]
      word.slice! first_letters
      word << first_letters << "ay"
   end
  end
  string_array.join(" ")
end
