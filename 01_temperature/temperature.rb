def ftoc(f)
	# if f == 32
	# 	0
	# elsif f == 212
	# 	100
	# elsif f == 98.6
	# 	37
	# else
	# 	20
	# end
	((f - 32.0)/(9.0/5.0)).round
end

def ctof(c)
	f = ((c*9.0/5) + 32)
	# ((c + 32.0)/(9.0/5.0)).round
end


