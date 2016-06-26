def translate(word)
  words = word.split(" ")
  latin = []
  vowels = ["a", "e", "i", "o", "u"]
  words.each do |i|
    if vowels.include?(i[0])
      latin.push(i + "ay")
    else
      total = i.split("")
      start = 1
      while !(vowels.include?(total[start]))
        start += 1
      end
      if i[(start - 1)..start] == "qu"
        latin.push(i[(start + 1)..(i.length - 1)] + i[0..start] + "ay")
      else
      latin.push(i[start..(i.length - 1)] + i[0..(start - 1)] + "ay")
      end
    end
  end
  return latin.join(" ")
end
