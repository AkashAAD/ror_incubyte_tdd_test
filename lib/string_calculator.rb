class StringCalculator
  def add(str)
    return 0 if str.empty?
    str = str.gsub(' ', '')
    
    str.split(',').map(&:to_i).sum
  end
end
