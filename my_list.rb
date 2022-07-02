require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each(&)
    @list.each(&)
  end
end

list = MyList.new(1, 2, 3, 4)
# Overridden All method
puts (list.all? { |e| e < 5 }) #true
puts (list.all? { |e| e > 5 }) #false

# overidden Any method
puts (list.any? { |e| e == 2 }) #true
puts (list.any? { |e| e == 5 }) #false
# true

# overidden filter method
puts list.filter(&:even?)
#  [2, 4]
