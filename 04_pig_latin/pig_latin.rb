def translate(string)
  string.downcase
  vowels = ["a","e","i","o","u"]
  word_array = string.split(" ")
  word_array.each_index do |index|
    first_vowel = 0
    if word_array[index].include?("qu")
      first_vowel = word_array[index].index("qu") + 2
    else
      word_array[index].each_char do |c| 
        if vowels.include?(c)
          break
        else
          first_vowel += 1
        end
      end
    end
    if first_vowel == 0
      word_array[index] << "ay"
    else
      suffix = word_array[index].slice(0,first_vowel) << "ay"
      word_array[index] = word_array[index].slice(first_vowel,word_array[index].size) << suffix
    end
    word_array[index] = "#{word_array[index]} "
  end
  return word_array.join.strip
end