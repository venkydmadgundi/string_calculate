String Calculator

A Ruby implementation of a string calculator that handles various number formats and delimiters.
Features

    ✅ Handles empty strings

    ✅ Supports comma-separated numbers

    ✅ Handles newlines as delimiters

    ✅ Custom delimiter support

    ✅ Negative number validation

    ✅ Multiple number support

Installation

No installation required. Simply include the StringCalculator class in your Ruby project.
Usage
ruby

calculator = StringCalculator.new

# Basic usage
calculator.add("")                    # => 0
calculator.add("1")                   # => 1
calculator.add("1,2,3")               # => 6

# Newline delimiters
calculator.add("1\n2,3")              # => 6
calculator.add("1\n2,3,4")            # => 10

# Custom delimiters
calculator.add("//;\n1;2")            # => 3
calculator.add("//;\n1;2;3;5\n6")     # => 17

# Negative number handling (raises exception)
calculator.add("1,-2,3,-4")           # => raises "negative numbers not allowed -2, -4"

