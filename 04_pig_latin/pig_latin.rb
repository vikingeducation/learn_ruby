def translate_word(text)
  vowels = ['a', 'e', 'i', 'o', 'u', 'y']
  if vowels.include?(text[0])
    output = text + 'ay'
  else
    array = text.split('')
    array.length.times do
      current_letter = array.shift
      if vowels.include?(current_letter)
        array.unshift(current_letter)
        break
      elsif current_letter == 'q'
        current_letter = current_letter + array.shift
        array.push(current_letter)
      else
        array.push(current_letter)
      end
    end
    output = array.join('') + 'ay'
  end
  output
end

def translate(text)
  words = text.split(' ')
  output = words.map { |word| translate_word(word) }
  output.join(' ')
end
