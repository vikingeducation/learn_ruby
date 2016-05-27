class Integer

    def in_words

        word_hash = gen_num_hash
        illion_hash = gen_illion_hash

        digits = self.to_s.gsub(/[^\d]/, "").reverse.scan(/.{1,3}/).map {|num_group| num_group.reverse} # Convert to array of and ensure it is nothing but digits

        puts "digits: #{digits}"

        if digits.length == 1 && digits[0] == "0"
            return "zero"
        end

        words = []

        digits.each.with_index do |num_group, illions|

            next if num_group == "000"

            builder = []
            hundreds = ""
            tens = ""
            units = ""

            if num_group.length == 3
                hundreds = word_hash[num_group[0]]
                if hundreds.nil?
                    hundreds = ""
                else
                    hundreds += " hundred"
                end
                num_group[0] = ""
            end

            if num_group.length == 2
                tens = word_hash[num_group]
                if tens.nil?
                    tens = word_hash[num_group[0] + "0"]
                    num_group[0] = "" if tens.nil?
                    if num_group[0].to_i > 1
                        units = word_hash[num_group[1]]
                    end
                end
            end

            if num_group.length == 1
                units = word_hash[num_group[0]]
            end

            builder << hundreds
            builder << tens
            builder << units

            if illions > 0
                builder << illion_hash[illions]
            end

            words << (builder - ["", nil]).join(" ")
        end

        words.reverse.join(" ").strip

    end

    private
        def gen_num_hash
            {
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
                "90" => "ninety"
            }
        end

        def gen_illion_hash
            {
                1 => "thousand",
                2 => "million",
                3 => "billion",
                4 => "trillion"
            }
        end

end
