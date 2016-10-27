def ftoc(temp)
	temp = temp.to_f
	temp -= 32
	temp *= 5
	temp /= 9
	temp
end

def ctof (temp)
	temp = temp.to_f
	temp *= 9
	temp /= 5
	temp += 32
	temp
end
