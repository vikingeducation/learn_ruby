def vowels
  ["a", "e", "i", "o", "u"]
end

def translate(string)
  if string.split(" ").length == 1
    translation(string)
  else
    string = string.split(" ")
    string.map! do |word|
      translation(word)
    end
    string.join(" ")
  end
end

def translation(string)
  if vowels.include?(string[0])
    string << "ay"
  elsif !vowels.include?(string[0]) && !vowels.include?(string[1]) && !vowels.include?(string[2])
    string = string.split("")
    first_letter = string.shift
    second_letter = string.shift
    third_letter = string.shift
    string << first_letter + second_letter + third_letter + "ay"
    string.join("")
  elsif !vowels.include?(string[0]) && string[1] == "q" && string[2] == "u"
    string = string.split("")
    first_letter = string.shift
    second_letter = string.shift
    third_letter = string.shift
    string << first_letter + second_letter + third_letter + "ay"
    string.join("")
  elsif !vowels.include?(string[0]) && !vowels.include?(string[1])
    string = string.split("")
    first_letter = string.shift
    second_letter = string.shift
    string << first_letter + second_letter + "ay"
    string.join("")
  elsif string[0] == "q" && string[1] == "u"
    string = string.split("")
    first_letter = string.shift
    second_letter = string.shift
    string << first_letter + second_letter + "ay"
    string.join("")
  elsif !vowels.include?(string[0])
    string = string.split("")
    first_letter = string.shift
    string << first_letter + "ay"
    string.join("")
  end
end
