def reverser
	word_array = []
	yield.split(" ").each do |word|
		word_array << word.reverse
	end
	word_array.join(" ")
end

def adder(number = 1)
	yield + number
end

def repeater(repeats = 1)
	repeats.times do
		yield
	end
end