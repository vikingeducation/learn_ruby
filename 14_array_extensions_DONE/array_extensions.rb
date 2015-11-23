class Array
  def sum
    inject (0) {|total, number| total += number}
  end

  def square
    map {|number| number ** 2}
  end

  # I think this is a globale rule for methods that want to change the original.
  def square!
    replace square
  end
end