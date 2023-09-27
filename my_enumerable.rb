module MyEnumerable
  def all?(&block)
    result = true
    each { |n| result = false unless block.call(n) }
    puts result
  end

  def any?(&block)
    result = false
    each { |n| result = true if block.call(n) }
    puts result
  end

  def filter(&block)
    result = []
    each { |n| result << n if block.call(n) }
    puts result.inspect
  end
end
