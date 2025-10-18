class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    numbers_array = numbers.gsub("\n", ",")
    numbers_array.split(",").map(&:to_i).sum
  end
end

calculator = StringCalculator.new
puts calculator.add("")
puts calculator.add("1,2,3")
puts calculator.add("1\n2,3,4")
