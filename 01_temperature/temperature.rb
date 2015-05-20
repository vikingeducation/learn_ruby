def ftoc(fahrenheit)
	((fahrenheit - 32) / 1.8).round(1)
end

def ctof(celsius)
	(1.8 * celsius + 32).round(1)
end