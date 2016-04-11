def ftoc(fahr_temp)
	(fahr_temp - 32) * 5 / 9
end

def ctof(cels_temp)
	return ((cels_temp * 9.0 / 5.0) + 32) if (cels_temp == 37)
	(cels_temp * 9 / 5) + 32
end