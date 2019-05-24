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
    #puts a
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
    # a = []
    # self.my_each do |val|
    #   a.push(yield(val))
    # end
    #
    # # returns last iteration
    # puts a
    # a
  end


 end


# [3,4,5].my_each do |x|
#   puts x
# end
#
# [2,4,6].my_each_with_index do |index, value|
#   puts index
#   puts value
# end
#
# [3,6,9].my_select do |x|
# x > 6
# end
#
# [3,6,9].my_all? do |x|
# x > 2
# end
#
# [3,6,9].my_any? do |x|
# x > 8
# end
#
# [3,6,9].my_none? do |x|
# x > 10
# end

# [3,6,9].my_count do |x|
# x > 2
# end
#
# [3,6,9].my_map do |x|
# x*2
# end

[3,6,9].my_inject do |prev, curr|

end


=begin
Questions:
1. Needs to be in array class?
=end
