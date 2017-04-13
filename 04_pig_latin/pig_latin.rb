def translate(string)
  if string.include?(" ")
    words = string.split(" ")
    alfa = ""
    words.each { |word| alfa += translate(word) + " "}
    alfa[0..-2]
  else
    vowels = "aeiou".split(//)
    if vowels.include?(string[0])
      string + "ay"
    elsif string.start_with?("qu")
      translate(string[2..-1] + "qu")
    else
      translate(string[1..-1] + string[0])
    end
  end
end
