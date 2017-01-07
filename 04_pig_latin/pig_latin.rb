require 'pry'
def translate(str)
  vowels = %w[a e i o u]
  op = []
  str.split(" ").each do |word|
    while !vowels.include?(word.split("").first)
      word = word.split("").rotate.join
    end
    if word.split("").first == 'u' &&
       word.split("").last == 'q'
       word = word.split("").rotate.join
    end
    word = word + "ay"
    op << word
  end
  op.join(" ")
end

