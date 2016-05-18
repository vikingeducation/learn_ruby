class Array
  def sum
    if empty?
      return 0
    else
      sum = 0
      each do |addend|
        sum += addend
      end
      sum
    end
  end

  def square
    if empty?
      return []
    else
      return map { |base| base**2}
    end
  end

  def square!
    map! { |base| base**2}
  end
end