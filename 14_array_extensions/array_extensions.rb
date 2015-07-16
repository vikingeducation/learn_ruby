require "byebug"

class Array

  def sum
    if self.empty?
      puts "Empty"
      sum=0
    else
      puts "Not Empty"
      sum=0
      self.each do |el|
        
        sum+=el
      end
      sum
    end
  end

  def square
    if self.empty?
      @arr=[]
    else
      @arr=[]
      self.each do |el|
        @arr<<el*el
      end
    end
    @arr
  end

  def square!
    if self.empty?
      []
    else
      self.each_with_index do |el,i|
        self[i]=el*el
      end
    end
    
  end
end