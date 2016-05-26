def translate text
    words = text.split

    # Iterate over every word and change it in place
    words.map! do |word|

        vowel_pos = find_vowel_pos word # Get first vowel in the word

        # If vowel_pos is nil, there are no vowels so return the word unchanged + "ay"
        if vowel_pos.nil?
            return word + "ay"
        end

        prefix = word[0, vowel_pos]
        suffix = word[vowel_pos, word.length]

        word = suffix + prefix + "ay"
    end

    words.join(" ")
end

private
    def find_vowel_pos word
        # Iterate over each character in the word with an index
        word.each_char.with_index do |char, index|
            # If the character is a vowel, save the index and break
            if vowel?(char)
                return index
            end
        end
    end

    def vowel? char
        ["a", "e", "i", "o", "u"].include? char
    end
