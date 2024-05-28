class StringCalculator
  def add(str)
    return 0 if str.empty?

    return str.split.map(&:to_i).sum
  end
end
