# Regex to create digits key
# string = %q|   

#     expect(0.in_words).to eq('zero')
#     expect(1.in_words).to eq('one')
#     expect(2.in_words).to eq('two')
#     expect(3.in_words).to eq('three')
#     expect(4.in_words).to eq('four')
#     expect(5.in_words).to eq('five')
#     expect(6.in_words).to eq('six')
#     expect(7.in_words).to eq('seven')
#     expect(8.in_words).to eq('eight')
#     expect(9.in_words).to eq('nine')
#   end

  
#     expect(10.in_words).to eq('ten')
#     expect(11.in_words).to eq('eleven')
#     expect(12.in_words).to eq ('twelve')
#   end

  
#     expect(13.in_words).to eq('thirteen')
#     expect(14.in_words).to eq('fourteen')
#     expect(15.in_words).to eq('fifteen')
#     expect(16.in_words).to eq('sixteen')
#     expect(17.in_words).to eq('seventeen')
#     expect(18.in_words).to eq('eighteen')
#     expect(19.in_words).to eq('nineteen')
#   end

  
#     expect(20.in_words).to eq('twenty')
#     expect(30.in_words).to eq('thirty')
#     expect(40.in_words).to eq('forty')
#     expect(50.in_words).to eq('fifty')
#     expect(60.in_words).to eq('sixty')
#     expect(70.in_words).to eq('seventy')
#     expect(80.in_words).to eq('eighty')
#     expect(90.in_words).to eq('ninety')
#   end|
  
# x =  string.scan(/(\d+)/)
# puts x

# y =  string.scan(/'(\w+)'/)
# puts y

# x.length == y.length

# digits = {}

# x.length.times do |i|
#   num = x[i][0].to_i
#   str = y[i][0]
#   digits[num] = str
# end

# digits




class Fixnum
  

  def in_words
    digits ={0=>"zero", 1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine", 10=>"ten", 11=>"eleven", 12=>"twelve", 13=>"thirteen", 14=>"fourteen", 15=>"fifteen", 16=>"sixteen", 17=>"seventeen", 18=>"eighteen", 19=>"nineteen", 20=>"twenty", 30=>"thirty", 40=>"forty", 50=>"fifty", 60=>"sixty", 70=>"seventy", 80=>"eighty", 90=>"ninety"}
    # digits[self] ? digits[self] : 'oops'
    
    if digits[self]
      digits[self]
    else
      #
      
      money = (self / 10.0).to_s
      tens = money[0]
      ones = money[2]
      ans = digits[tens.to_i * 10] + " " + digits[ones.to_i]
      ans
      
      
    end
    
    
    
  end    


  
  
  
end#classend
