# # Array Extension
#
# # Topics
#
# * objects, methods, classes
# * reopening classes
# TDD

class Array
  
  def sum
    total = 0
      self.each {|x| total+= x}
    total
  end

  def square
    total = []
      self.each {|x| total.push(x*x)}
    total
  end

  def square!
    self.map! { |x| x*x}
  end

end
