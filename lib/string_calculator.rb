class StringCalculator
  def add(str)
    raise 'Invalid input' if str.include?('\n') && str.match?(/\d,\\n/m)

    delimiter = ','
    return 0 if str.empty?
    str = str.gsub(' ', '')
    start_index = str.index('//')
    end_index = str.index('\n')

    if start_index
      delimiter = str[start_index + 2..end_index-1]
      str = str[end_index + 2..]
    end

    numbers = str.split(/#{delimiter}/).map(&:to_i)
    negative_numbers = numbers.select {|num| num < 0 }
  
    if negative_numbers.any?
      raise raise "Negative numbers not allowed #{negative_numbers.join(',')}"
    end

    (numbers - negative_numbers).sum
  rescue => e
    e.message
  end
end
