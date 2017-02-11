class Book

  attr_reader :title, :app_state

  def initialize
    @app_state = {
      exceptions: "the a an and in of".split(" ")
    }
    @title = nil
  end

  def title=(s)
    @title = s.split(" ").each_with_index.map do |word, i|
      if i == 0
        word.capitalize
      elsif app_state[:exceptions].include?(word)
        word
      else
        word.capitalize
      end
    end.join(" ")
  end

end
