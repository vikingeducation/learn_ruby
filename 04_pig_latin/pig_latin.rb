def translate(phrase)
  words = phrase.split(' ')
  pig_latin = words.map do |word|
    parts = word.split(/([aieo].*)|((?<!q)u.*)/).reverse.join('')
    parts + 'ay'
  end
  pig_latin.join(' ')
end
