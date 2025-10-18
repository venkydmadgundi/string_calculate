class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    delimiter_new_line = "\n"
    if numbers.start_with?('//')
      delimiter_part, numbers_string = numbers.split("\n", 2)
      delimiter = delimiter_part[2..-1]
      numbers_array = generate_array_with_delimiter(numbers, delimiter_new_line, delimiter)
    else
      numbers_array = generate_array_with_delimiter(numbers, delimiter_new_line, ",")
    end
    negatives = numbers_array.select { |n| n < 0 }
    raise "negative numbers not allowed #{negatives.join(', ')}" unless negatives.empty?
    numbers_array.sum
  end
  def generate_array_with_delimiter(numbers, delimiter_source, delimiter_destination)
    numbers_string = numbers.gsub(delimiter_source, delimiter_destination)
    numbers_string.split(delimiter_destination).map(&:to_i)
  end
end

calculator = StringCalculator.new
puts calculator.add("")
puts calculator.add("1,2,3")
puts calculator.add("1\n2,3,4")
puts calculator.add("//;\n1;2")
puts calculator.add("//;\n1;2;3;5\n6")
puts calculator.add("1,-2,3,-4")
