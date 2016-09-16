def add (x,y)
	sum = x + y #why does this pass all addition tests?
end

def subtract (x,y)
	sum = x - y
end

def sum(arr)
	sum = 0
	arr.each do |x|
		sum += x
	end
	sum
end
