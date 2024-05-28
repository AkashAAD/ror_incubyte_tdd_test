# [Incubyte TDD Assessment](https://blog.incubyte.co/blog/tdd-assessment/)
* Ruby -v 3.3.1, ubuntu or mac
* Steps to run the application:
  - Go to ad_ror_Incubyte_test folder
  - Run `rvm use 3.3.1` OR `rbenv local 3.3.1` or `asdf local ruby 3.3.1` command
  - Run `bundle` command
  - Run `ruby lib/string_calculator.rb` to run the code.
  - Run `rspec spec/string_calculator_spec.rb` to run the test cases.
* Examples with different input and output.
  ```ruby
    obj = StringCalculator.new
    puts obj.add('') #  0
    puts obj.add('1') # 1
    puts obj.add('1,5') # 6
    puts obj.add('//;\n1;2') # 3
    puts obj.add('1,\n') # 'Invalid input'
    puts obj.add('//;\n1;2,-8') # 'Negative numbers not allowed -8'
  ```
