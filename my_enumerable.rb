module MyEnumerable
  def all?(&block)
    result = true
    each { |element| result = false unless block.call(element) }
    result
  end

  def any?(&block)
    result = false
    each { |element| result = true if block.call(element) }
    result
  end

  def filter(&block)
    result = []
    each { |element| result << element if block.call(element) }
    result
  end
end
