# HW0 PART 1  (100 points possible)
# Check the documentation on Array, Hash and Enumerable 
# as they could help tremendously with these exercises. :-)

# ARRAY
# Define a method sum which takes an array of integers as an argument and 
# returns the sum of its elements. 
# For an empty array it should return zero.

puts "Hello from PK HW0 Part 1a ARRAY"

def sum(array)
    return 0 if array.empty?
    return array.reduce 0, :+
end

puts sum([])
puts sum([1,2])
raise 'sum([]) !=0' unless sum([]) == 0
raise 'sum([1,2,3]) !=6' unless sum([1,2,3]) == 6


# HASH
# Define a method max_2_sum which takes an array of integers as an argument and 
# returns the sum of its two largest elements. 
# For an empty array it should return zero. 
# For an array with just one element, it should return that element.

puts "Hello from PK HW0 Part 1b HASH"
def max_2_sum(array)
    return 0 if array.empty?
    return array[0] if array.count == 1
    array.sort.last(2).reduce 0, :+
end

puts max_2_sum([])
puts max_2_sum([3,1,2])
puts max_2_sum([6])


# ENUMERABLE
# Define a method sum_to_n? which takes an array of integers and 
# an additional integer, n, as arguments and returns true if any two distinct 
# elements in the array of integers sum to n. 
# An empty array or single element array should both return false.

puts "Hello from PK HW0 Part 1c ENUMERABLE"

def add_me(x)
end

def sum_to_n?(array,n)
    return false if array.count == 0 || array.count == 1
    array.combination(2).to_a.any? {|x|x.reduce(:+)==n}
end

puts sum_to_n?([1,2,3],3)
puts sum_to_n?([1,2,3],5)
puts sum_to_n?([1,2,3],4)
puts sum_to_n?([1,2,3],2)
puts sum_to_n?([],1)
puts sum_to_n?([],0)
puts sum_to_n?([1],1)

