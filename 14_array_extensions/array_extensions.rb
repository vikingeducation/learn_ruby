# Re-used some code from the original app academy test here
class Array
  
  def sum
    result = 0
    self.each do  |num|     #Iterate through every number on the list using self (instance of the class)
      result += num         # add each number to the result
    end
    result                  # return result which is the sum of all the numbers we iterated over
  end
  
  def square 
    self.collect{ |num| num*num}      # iterate through each number and produce a new array with the 
  end                                 # square of that number (num*num) using collect method from before
  
  def square! 
    self.collect!{ |num| num*num}     # iterate through every number of original array (square!) and produce a 
  end                                 # new array with the square of that number (num*num)
end                                   # ! modifies the original object it was called on (stackoverflow)