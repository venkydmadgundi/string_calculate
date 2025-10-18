class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    delimiter_new_line = "\n"
    if numbers.start_with?('//')
      delimiter_part, numbers_string = numbers.split("\n", 2)
      delimiter = delimiter_part[2..-1]
      numbers_string = numbers.gsub(delimiter_new_line, delimiter)
      numbers_array = numbers_string.split(delimiter).map(&:to_i)
    else
      numbers_string = numbers.gsub(delimiter_new_line, ",")
      numbers_array = numbers_string.split(",").map(&:to_i)
    end
    negatives = numbers_array.select { |n| n < 0 }
    raise "negative numbers not allowed #{negatives.join(', ')}" unless negatives.empty?
    numbers_array.sum
  end
end

calculator = StringCalculator.new
puts calculator.add("")
puts calculator.add("1,2,3")
puts calculator.add("1\n2,3,4")
puts calculator.add("//;\n1;2")
puts calculator.add("//;\n1;2;3;5\n6")
puts calculator.add("1,-2,3,-4")
