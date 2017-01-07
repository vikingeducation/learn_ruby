def translate(phrase)
  temp = phrase
  vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U" ]
  words = phrase.split(' ')

  words.each do |str|
    #if first letter isvowel
    if vowels.include?(str[0])
      temp = temp.sub(str, str + "ay")
    #if first second iscons
    elsif vowels.include?(str[0]) == false && vowels.include?(str[1]) == false
      vowels.each do |cons|
        if str.include?(cons) == true
          cindex = str.index(cons)
          temp = temp.sub(str, str[cindex..-1] + str[0..cindex-1] + "ay")
        end
      end
    #if qu
    elsif str[0..1] == "qu"
      temp = temp.sub(str, str[2..-1] + str[0..1] + "ay" ) 
    else 
       temp = temp.sub(str, str[1..-1] + str[0] + "ay" ) 
    end
  end
  return temp
end