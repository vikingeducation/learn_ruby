def ftoc(temp)
	temp = temp.to_f
	c = (temp - 32) * (5/9.0)
end

def ctof(temp)
	temp = temp.to_f
	f = (9/5.0) * temp + 32
end