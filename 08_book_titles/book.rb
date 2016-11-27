class Book
  attr_reader :title

  def initialize
    @tilte = nil
  end

  def title=(line)

    line = line.split(" ")

    def upcase name
      name = name.split("")
      name[0] = name[0].upcase
      name = name.join
    end

    line[0] = upcase line[0]

    line = line.map do |name|
      if ['a' ,'an' ,'the','in' ,'of','and'].include? name
        name = name
      else
        upcase name

      end
    end
    result = line.join(" ")
    @title = result
  end
end
