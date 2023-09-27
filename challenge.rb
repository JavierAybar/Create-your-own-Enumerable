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
