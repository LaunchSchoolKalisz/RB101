=begin
Given this data structure write some code to return an array which contains only the hashes where all the 
integers are even.

# Problem
- given a nested data structure
- retturn an array 
  - Array should contain only the hashes with all even integers

Input: Array
Output: Array

# Examples
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]
==> [{b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# Data
Array
Hash
Integer

# Algo
- Initiate an empty array
- Iterate through the array
  - Keep hash if hash values are all even
=end
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr.select do |hash|
  hash.all? do |_, values|
    values.all? {|number| number.even?}
  end
end


=begin
LS Solution

arr.select do |hsh|
  hsh.all? do |_, value|
    value.all? do |num|
      num.even?
    end
  end
end

# => [{:e=>[8], :f=>[6, 10]}]
From the problem description it is clear that we will need to return a subset of the objects in the outer array, so 
select should hopefully be a fairly obvious method choice to call on that array. The key is then to figure out how to 
carry out the selection.

Since select will return all the elements for which the block returns true and we only want hashes where all the 
integers are even, all? combined with even? is a good choice here. The situation is complicated slightly by the fact 
that the integers are further nested inside the inner arrays, so we need to iterate through these first.

If all of the integers in an inner array are even then the inner block returns true to the innermost call to all?. If 
all of the inner blocks for a particular hash return true then the middle block returns true to the outer call to all? 
which in turn causes the outer block to return true to the select method for that iteration.
=end
