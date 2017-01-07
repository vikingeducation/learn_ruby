def ftoc(temp_f)
	return 0 if temp_f == 32
	(temp_f - 32) * 5 / 9
end

def ctof(temp_c)
	return 32 if temp_c == 0
	temp_c * 9.0 / 5 + 32
end