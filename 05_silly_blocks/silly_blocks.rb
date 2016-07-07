def reverser(&block)
	text = yield
	text_array = text.split(" ")
	reversed_array = []
	
	text_array.each do |word|
		reversed_array << word.reverse
	end

	reversed_array.join(" ")
end

def adder(addend = 1)
	yield + addend
end

def repeater(times=1)
	times.times do
		yield
	end
end