class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
  end
end

calculator = StringCalculator.new
puts calculator.add("")
