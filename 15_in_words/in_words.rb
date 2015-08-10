class Fixnum
	def in_words
		raise "Cannot express number in words" if self.abs >= 1000000000000000

		string = self.to_s
		negative = ''
		chars = string.chars

		if self < 0
			chars.shift
			negative = 'negative'
		end

		length = string.length
		words = []

		chars.reverse.each_slice(3).with_index do |slice, slice_index|

			char_result = []
			last_char = nil

			slice.each_with_index do |char, char_index|
				if char_index == 0
					if char != '0' || self == 0
						char_result << word_map["_#{char}".to_sym]
					end
				elsif char_index == 1 && char != '0'
					if char == '1'
						char_result.pop
						char_result << word_map["_#{char}#{last_char}".to_sym]
					else
						char_result << word_map["_#{char}0".to_sym]
					end
				elsif char_index == 2 && char != '0'
					char_result << word_map[:_100]
					char_result << word_map["_#{char}".to_sym]
				end
				last_char = char
			end

			slice_result = []

			if ! char_result.empty?
				if slice_index == 1
					slice_result << word_map[:_1000]
				elsif slice_index == 2
					slice_result << word_map[:_1000000]
				elsif slice_index == 3
					slice_result << word_map[:_1000000000]
				elsif slice_index == 4
					slice_result << word_map[:_1000000000000]
				end
			end
			
			if ! slice_result.empty?
				words += slice_result
			end

			if ! char_result.empty?
				words += char_result
			end
		end

		words << negative if self < 0
		words.reverse.join(' ')
	end

	private
		def word_map
			{
				:_0 => 'zero',
				:_1 => 'one',
				:_2 => 'two',
				:_3 => 'three',
				:_4 => 'four',
				:_5 => 'five',
				:_6 => 'six',
				:_7 => 'seven',
				:_8 => 'eight',
				:_9 => 'nine',
				:_10 => 'ten',
				:_11 => 'eleven',
				:_12 => 'twelve',
				:_13 => 'thirteen',
				:_14 => 'fourteen',
				:_15 => 'fifteen',
				:_16 => 'sixteen',
				:_17 => 'seventeen',
				:_18 => 'eighteen',
				:_19 => 'nineteen',
				:_20 => 'twenty',
				:_30 => 'thirty',
				:_40 => 'forty',
				:_50 => 'fifty',
				:_60 => 'sixty',
				:_70 => 'seventy',
				:_80 => 'eighty',
				:_90 => 'ninety',
				:_100 => 'hundred',
				:_1000 => 'thousand',
				:_1000000 => 'million',
				:_1000000000 => 'billion',
				:_1000000000000 => 'trillion'
			}
		end
end