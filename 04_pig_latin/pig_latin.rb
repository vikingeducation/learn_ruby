def translate text
    words = text.split # every word

    # Iterate over every word and change it in place
    words.map! do |word|

        vowel_pos = find_vowel_pos word # Get first vowel in the word

        # If vowel_pos is nil, there are no vowels so return the word unchanged + "ay"
        if vowel_pos.nil?
            return word + "ay"
        end

        vowel_pos = adjust_for_phonemes word, vowel_pos

        prefix = word[0, vowel_pos] # Take the part of the word before the vowel
        suffix = word[vowel_pos, word.length] # And the part after

        word = suffix + prefix + "ay" # And join in opposite order = "ay"
    end

    words.join(" ")
end

private
    def find_vowel_pos word
        # Iterate over each character in the word with an index
        word.each_char.with_index do |char, index|
            # If the character is a vowel, return the index
            if vowel?(char)
                return index
            end
        end
    end

    def vowel? char
        ["a", "e", "i", "o", "u"].include? char
    end

    def adjust_for_phonemes word, vowel_pos
        # Array of phonemes represented by the vowel key and then an array of the phonemes
        phonemes_identifiers = [["u", ["qu"]]]

        # Break into a list of vowels with their phonemes
        phonemes_identifiers.each do |phoneme_list|
            # If they match, text to see if the phoneme is in the string around the vowel
            if word[vowel_pos] == phoneme_list[0]
                # Iterate over phonemes
                phoneme_list[1].each do |phoneme|
                    if word.include? phoneme # If the phoneme is in the word
                        phoneme_pos = word.index(phoneme) # Get index of phoneme start
                        # Test if vowel is in the phoneme
                        if vowel_pos >= phoneme_pos && vowel_pos < phoneme_pos + phoneme.length
                            vowel_pos = phoneme_pos + phoneme.length # end of phoneme
                        end
                    end
                end

            end

        end
        vowel_pos # Returns adjusted or unadjusted postion
    end
