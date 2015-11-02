module ArrayExtension

  def sum
    result = 0
    self.each { |number| result += number }
    result
  end

  def square
    results = []
    self.each { |number| results << number ** 2 }
    results
  end

  def square!
    self.map! { |number| number ** 2 }
  end

end

class Array
  include ArrayExtension
end