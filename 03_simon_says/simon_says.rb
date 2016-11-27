def echo word
  word
end

def shout word
  word.upcase
end

def repeat word, n = 2
  ("#{word} " * n).strip
end

def start_of_word word, n
  word[0...n]
end

def first_word words
  words.split(" ").first
end

def titleize words
  result = []
  words.split.each_with_index do |word, i|
    first_letter = word.split("").first
    if ['a', 'o', 'e', 't'].include? first_letter and i != 0
      result << word
    else
      result << [first_letter.upcase, word[1..-1]].join
    end
  end
  result.join(" ")
end
