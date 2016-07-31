class Book
  def title name
    name = name.split("")
    name[0] = name[0].upcase
    name.join
  end
end
