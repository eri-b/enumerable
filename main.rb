module Enumerable

  def my_each
    for i in self do
      yield(i)
    end

    # original array
    #print self
    self
  end

  def my_each_with_index
    for i in 0...self.length do
      yield(i, self[i])
    end

    # original array
    #print self
    self
  end

  def my_select
    a = []
    self.my_each do |val|
      a.push(val) if yield(val)
    end

    # new array
    puts a
    a
  end

  def my_all?
    a = []
    self.my_each do |val|
      a.push(val) if yield(val)
    end
    all = a.length == self.length

    # boolean
    puts all
    all
  end

  def my_any?
    a = []
    self.my_each do |val|
      a.push(val) if yield(val)
    end
    any = a.length >= 1

    # boolean
    puts any
    any
  end

  def my_none?
    a = []
    self.my_each do |val|
      a.push(val) if yield(val)
    end
    none = a.length == 0

    # boolean
    puts none
    none
  end

  def my_count
    a = []
    self.my_each do |val|
      a.push(val) if yield(val)
    end
    count = a.length

    # counts number that matches critera in block
    puts count
    count
  end

  def my_map
    a = []
    self.my_each do |val|
      a.push(yield(val))
    end

    # returns updated array
    puts a
    a
  end

  def my_inject
    prev = self[0]
    self.my_each_with_index do |i, val|
      next if i==0
      result = yield(prev, val)
      prev = result

    end

    #final result
    puts prev
    prev
  end

 end

# cannot be in enumerables module
 def multiply_els (arr)
   arr.my_inject do |prev,curr|
     prev * curr
   end
 end


# Tests

# 1
# [3,4,5].my_each do |x|
#   puts x
# end

# 2
# [2,4,6].my_each_with_index do |index, value|
#   puts index
#   puts value
# end

# 3
# [3,6,9].my_select do |x|
# x > 6
# end

# 4
# [3,6,9].my_all? do |x|
# x > 2
# end

# 5
# [3,6,9].my_any? do |x|
# x > 8
# end

# 6
# [3,6,9].my_none? do |x|
# x > 10
# end

# 7
# [3,6,9].my_count do |x|
# x > 2
# end

#8
# [3,6,9].my_map do |x|
# x*2
# end

# 9
# [3,14,12,4].my_inject do |prev, curr|
# prev + curr
# end

# 10
# multiply_els([2,4,5])

# 11
# my_proc = Proc.new do |x|
# x*6
# end
#
# [3,6,9].my_map(&my_proc)


# 12
# my_proc = Proc.new do |x|
# x*6
# end
#
# [3,6,9].my_map(&my_proc) do |x|
# x*2
# end
