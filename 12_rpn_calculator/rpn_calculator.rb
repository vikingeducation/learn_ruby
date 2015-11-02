class RPNCalculator < Array

  def validate
    raise "calculator is empty" if self.length < 2
  end

  def value
    self.last
  end

  def plus
    validate
    self.push self.pop + self.pop
  end

  def minus
    validate
    self.push (-self.pop) + self.pop
  end

  def times
    validate
    self.push self.pop * self.pop
  end

  def divide
    validate
    denominator = self.pop
    numerator = self.pop
    self.push numerator / denominator.to_f
  end

  def tokens string
    string.split(" ").collect { |item| item.match(/\d/) != nil ? item.to_i : item.to_sym }
  end

  def evaluate string
    actions = tokens string
    actions.each do |action|
      case action
      when :+
        self.plus
      when :-
        self.minus
      when :*
        self.times
      when :/
        self.divide
      else
        self.push action
      end
    end
    self.value
  end
end