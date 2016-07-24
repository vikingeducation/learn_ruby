class Array
  def sum
    self.inject(0) { |all, each| all + each }
  end

  def square
    self.map { |each| each * each }
  end

  def square!
    # binding.pry
    new_array = self.map { |each| each * each }
    self.clear
    new_array.each { |each| self << each }
  end

end
