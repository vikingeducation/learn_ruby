def translate(string)
  array = string.split(" ")
  vowels = ["a", "e", "i", "o", "u"]
  double_consonants = ["ch", "tr", "ph", "gr", "br", "gl", "sh", "fr", "bl", "th", "sp", "qu"]
  triple_consonants = ["thr", "spl", "shr", "chr", "str", "sch", "squ"]
  array = array.each_with_index do |item, index|
    if vowels.include?(item[0])
      item = item << "ay"
    elsif triple_consonants.include?(item[0..2])
      item = item << item[0..2] << "ay"
      item[0..2] = ""
    elsif double_consonants.include?(item[0..1])
      item = item << item[0..1] << "ay"
      item[0..1] = ""
    elsif item[0] == item[0].upcase
      item = item << item[0].downcase << "ay"
      item[1] = item[1].upcase
      item[0] = ""
    else
      item = item << item[0] << "ay"
      item[0] = ""
    end
  end
  out = array.join(" ")
  if out[-4] == "."
    out[-4] = ""
    out << "."
  end
  out
end