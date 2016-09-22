def translate_word(string)
    list = string.chomp.split(//)
    vowels = true
    qued = false
    pos = 1 #we have to do it this way cause we're inserting two letters
    punctuation = ""
    list.each do |letter|
      pos += 1
      if letter == "!" || letter == "," ||letter == "."||letter == "?"
        punctuation = letter
        list = list - [punctuation]
      end
    end

    while vowels == true
      if qued == true
        movingletter = list.shift
        list.push(movingletter)
        qued = false
      elsif list.first == "a"||list.first == "e"||list.first == "i"||list.first == "o"||list.first == "u"||list.first == "y"
          list = list + ["a", "y"]
          finalword = list.insert(pos, punctuation).join("")
          vowels = false
      elsif list.first == "q"
        qued = true
        movingletter = list.shift
        list.push(movingletter)
      else 
        movingletter = list.shift
        list.push(movingletter)
      end
    end
  return finalword
end

def translate(string)
  listofwords = string.split
  translatedlist = []
  upper = false
  listofwords.each do |word|
    if word.strip == word.strip.capitalize
      upper = true
    end
    word.downcase!
    translated = translate_word(word)
    if upper == true
      translated = translated.capitalize
      upper = false
    end
    translatedlist.push(translated)
  end
  return  translatedlist.join(' ')
end