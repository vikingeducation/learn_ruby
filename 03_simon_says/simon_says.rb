def echo(x)
	x
end

def shout(x)
	x.upcase
end

def repeat(x, times = 2)
	([x] * times).join(" ") #why does array [x] === "hello hello hello"?
end

def start_of_word(s, n)
	s[0...n]
end

def first_word(s)
	s.split(" ").first
end

def titleize(t)
	t.capitalize!
end