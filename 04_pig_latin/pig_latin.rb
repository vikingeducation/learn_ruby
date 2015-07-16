$vow = ["a","e","i","o","u"]

def translate(words)
  words_array = words.split(" ")
  words_array.each do |item|
    item = item+"ay" if vow.include?item[0]
  end
end