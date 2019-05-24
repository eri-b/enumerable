module Enumerable

  def my_each
    for i in self do
      yield(i)
    end

    #return original array
    print self
    self
  end

  def my_each_with_index
    for i in 0...self.length do
      yield(i, self[i])
    end

    #return original array
    print self
    self
  end

  def my_select
    
  end


 end


[3,4,5].my_each do |x|
  puts x
end

[2,4,6].my_each_with_index do |index, value|
  puts index
  puts value
end

print [3,6,9]


=begin
Questions:
1. Needs to be in array class?
=end
