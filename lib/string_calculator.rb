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

    str.split(/#{delimiter}/).map(&:to_i).sum

  rescue => e
    e.message
  end
end
