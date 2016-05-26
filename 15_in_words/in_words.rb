class Fixnum

    def in_words

        word_hash = gen_num_hash

        digits = self.to_s.gsub(/[^\d]/, "").reverse.scan(/.{1,3}/).map {|num_group| num_group.reverse} # Convert to array of and ensure it is nothing but digits

        puts "digits: #{digits}"

        words = []

        if digits.length == 1 && digits[0] == 0
            return word_hash[0]
        end

        digits.each.with_index do |num_group, thousands|
            builder = []
            tens = ""
            units = ""

            if num_group.length == 3
                builder << "#{word_hash[num_group[0]]} hundred"
                num_group[0] = ""
            end

            if num_group.length == 2
                tens = word_hash[num_group]
                if tens.nil?
                    tens = word_hash[num_group[0] + "0"]
                    num_group[0] = ""
                end
            end

            units = word_hash[num_group[0]]

            builder << tens
            builder << units
            words << builder.join(" ")
        end

        words.reverse.join(" ").strip

    end

    private
        def chunk(string, size)
        string.scan(/.{1,#{size}}/)
        end

        def gen_num_hash
            {
                "0" => "zero",
                "1" => "one",
                "2" => "two",
                "3" => "three",
                "4" => "four",
                "5" => "five",
                "6" => "six",
                "7" => "seven",
                "8" => "eight",
                "9" => "nine",
                "10" => "ten",
                "11" => "eleven",
                "12" => "twelve",
                "13" => "thirteen",
                "14" => "fourteen",
                "15" => "fifteen",
                "16" => "sixteen",
                "17" => "seventeen",
                "18" => "eighteen",
                "19" => "nineteen",
                "20" => "twenty",
                "30" => "thirty",
                "40" => "forty",
                "50" => "fifty",
                "60" => "sixty",
                "70" => "seventy",
                "80" => "eighty",
                "90" => "ninety",
                "00" => "hundred"
            }
        end

end
