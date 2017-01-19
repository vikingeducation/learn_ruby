def translate(sentence)
  vowels = ['a', 'e', 'i', 'o', 'u']
  consonants = ('a'..'z').to_a.select {|letter| not vowels.include?(letter)}
  consonants.push("qu")

  pig_latin_array = sentence.split.map do |word|
    result = word
    consonant_cluster = ""

    while not vowels.include?(result[0]) and result.length > 0 do
      consonant_cluster += result[0]
      result = result[1..-1]
    end

    if result.length > 0
      overlap = "#{consonant_cluster[-1]}#{result[0]}"

      if consonants.include?(overlap)
        consonant_cluster += result[0]
        result = result[1..-1]
      end
    end

    "#{result}#{consonant_cluster}ay"
  end

  pig_latin_array.join(" ")
end
