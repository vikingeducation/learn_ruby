def translate(str)
  arr = str.split
  arr.map! do |word|
    ending = ""
    while word =~ /^[^aeiou]/
      if word =~ /^qu/
        ending += word.slice!(0..1)
      else
        ending += word.slice!(0)
      end
    end
    if word =~ /^[aeiou]/
      word = word+ending+"ay"
    end
  end
  arr.join(' ')
end