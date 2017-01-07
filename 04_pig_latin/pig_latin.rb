def translate(string)
  array = string.split(" ")
  array.map! {|x| translate_word(x)}
  array.join(" ")

end

def translate_word(string)
  vowels = ["a", "e", "i", "o", "u"]
  if vowels.include?(string[0])
    return string + "ay"
  elsif string[0..1] == "qu"
    return string[2..-1] + "quay"
  elsif string[1..2] == "qu"
    return string[3..-1] + string[0..2] + "ay"
  elsif vowels.include?(string[1])
    return string[1..-1] + string[0] + "ay"
  elsif vowels.include?(string[2])
    return string[2..-1] + string[0..1] + "ay"
  elsif vowels.include?(string[3])
    return string[3..-1] + string[0..2] + "ay"
  end
end
