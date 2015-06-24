

def translate(string)
  vowels = ["a", "e", "i", "o", "u"]
  word_array = string.split(' ')
  str_array = []

  i=0
  word_array.each do |word|
    # print "#{word} "
    while !vowels.include?(word[i])
      i+=1
    end
    # print "i = #{i}"
    if word[i] == "u" && word[i-1] == "q"
      i+=1
    end
    # print "now i = #{i}"
    string = word[i..-1]+word[0...i]+"ay"
    # print "string = #{string}\n"
    str_array.push(string)
    i=0
  end
  str_array.join(' ')
end

# translate("the quick brown fox")