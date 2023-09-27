module MyEnumerable
  def pintar
    each { |n| print n }
  end

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

class MyList
  include MyEnumerable

  def initialize(value)
    @list = value
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new([1, 2, 3, 4])
list.all? { |e| e > 5 }
list.all? { |e| e < 5 }
list.any? { |e| e == 2 }
list.any? { |e| e == 5 }
# list.filter {|e| e.even?}
