def translate(string)
  vowels = "aeiou"
  words = string.split(" ")
  words = words.map do |w|
    is_cap = (w[0] == w[0].capitalize)
    start = 0
    w.split("").each_with_index do |c, i|
      if vowels.include?(c)
        next if (c == "u" && i > 0 && w[i-1] == "q")
        start = i
        break
      end
    end
    w = w[start..-1]+w[0...start]+"ay"
    is_cap ? w.downcase.capitalize : w
  end
  words.join(" ")
end