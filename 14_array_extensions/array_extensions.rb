Array.class_eval do
  
  def sum
    result = 0
    unless self.empty?
      self.each { |entry| result += entry }
    end
    result
  end

  def square
    result = []
    unless self.empty?
      self.each { |entry| result << entry ** 2 }
    end
    result
  end

  def square!
    unless self.empty?
      self.map! { |entry| entry = entry ** 2 }
    end
  end
end