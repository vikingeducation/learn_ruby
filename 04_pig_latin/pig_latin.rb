def translate(string)
  pig_latin_maker = lambda do |str|
    consonants = /\A[^aeiouqu]{,3}(qu)*/i.match(str)[0]
    if !!(/\A[aeiou]{1}/i.match(str))
      "#{str}ay"
    elsif !!(consonants)
      "#{str[consonants.length..str.length-1]}#{consonants}ay"
    end
  end

  output = string.split(" ").map(&pig_latin_maker)
  string.split(" ").each_with_index do |word,idx|
    output[idx] = output[idx].send(:capitalize) \
                  if !!(/\A[A-Z]{1}/.send(:match, string[0]))
  end

  output.send(:join, " ")
end


p translate("square")
