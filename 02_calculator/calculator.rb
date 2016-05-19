def add( num1, num2 )
	num1 + num2
end



def subtract( num1, num2 )
	num1 - num2
end



def sum( arr )
	if arr == []
		0
	else
		arr.reduce( 0 ) { |r, e| r + e }
	end
end



def multiply( arr )
	arr.reduce(1) { |r, e| r * e }
end



def power( num1, num2 )
	num1 ** num2
end

def factorial( num )

  array = []
  if num == 0
  	 return 0
  end

  while num >= 1
    array << num
    num -= 1
  end

  return array.inject(1) { |r, e| r * e }

end