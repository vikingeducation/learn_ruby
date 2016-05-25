def translate text
    words = text.split

    words.map! do |word|

        word.each_char.with_index do |char, index|

        end
    end

    words.join(" ")
end

private
    def vowel? char
        ["a", "e", "i", "o", "u"].include? char
    end
