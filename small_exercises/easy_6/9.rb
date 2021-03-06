=begin
Does My List Include This?
Write a method named include? that takes an Array and a search value as arguments. This method should return 
true if the search value is in the array, false if it is not. You may not use the Array#include? method in your 
solution.

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

# Problem: 
- Write a methood which takes 2 parameters: an array and a search value
- Return true if the array contains the search value, or false if it does not

Input: Array, integer
Output: Boolean

# Examples
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

# Data
Boolean, array, integer

# Algo
- Create a method which takes 2 parameters
- Check to see if the array contains the search value, if it does return true
- Else, return false
=end

def include?(array, search_value)
  if array.any?(search_value)
    true
  else
    false
  end
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

=begin
LS Solution

The easy way

def include?(array, value)
  !!array.find_index(value)
end

A slightly harder way

def include?(array, value)
  array.each { |element| return true if value == element }
  false
end

Discussion
The first method uses Array#find_index to scan the array for the first element that has the specified value. 
find_index returns the index number of the found element, which will always have a truthy value, or nil if no 
such element is present. We then use !! to force the return value to true or false in accordance with the 
implied promise of the ? in include?.

The second method does essentially the same thing, but it uses each instead of find_index. This takes a little 
bit more work, since we are explicitly returning false if the value is not found.

Further Exploration
Can you think of other solutions to this problem? There are lots of different ways to get the same result.
=end
