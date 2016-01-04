
def translate( the_string )
    vowels = "aeiou"
    two_letter_phenomes = ["qu",  "sl", "sc", "ch", "sh", "br", "th"]
    three_letter_phenomes = [ "squ", "sch", "thr", "shr"]

    word_arr = the_string.split(" ")

    pig_latin_string = ""
    word_arr.each do |w|
        if vowels.include? w[0]
            pig_latin_word = w + "ay"
        else
            if three_letter_phenomes.include? w[0, 3]
                pig_latin_word = w[3..-1] << w[0, 3]  << "ay"
            else
                if two_letter_phenomes.include? w[0, 2]
                    pig_latin_word = w[2..-1] << w[0, 2]  << "ay"
                else
                    pig_latin_word = w[1..-1] << w[0, 1] << "ay"
                end
            end
        end
        pig_latin_string = pig_latin_string << " "  << pig_latin_word
    end
    pig_latin_string.strip
end

