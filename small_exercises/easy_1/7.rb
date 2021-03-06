=begin
Stringy Strings
Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, 
always starting with 1. The length of the string should match the given integer.

Examples:

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

The tests above should print true.

## PROBLEM ##
- Write a method
- Takes a positive integer
- Returns a string of 1's and 0's
  - Starts with 1
  - Alternating
- Length of string = integer amount

Input = integer
Output = string

## EXAMPLES ##
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

## DATA ##
Integer
String

## ALGORITHM ##
- Create a method which takes 1 argument, an integer
- Initiate an array
- Push the correct number of integers (alt 0's and 1's) to the array
- Turn array back into string

## CODE ##
=end

def stringy(num)
  array = []
  count = 0

  loop do 
    break if count == num
    count += 1
    if count.even?
      array[count] = '0'
    else
      array[count] = '1'
    end
  end
  p array.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'









=begin
def stringy(length)
  numbers = []

  length.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end
  numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

=begin
Solution

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

Discussion
Performing a task a certain number of times should be fairly straightforward at this point. We use #times to 
iterate based on the number indicated by size. For each iteration, we use the index block parameter in a 
conditional to determine if the current number is even or odd. Since #times starts counting from 0, we know 
that the first number will be even. Knowing this, we can write our conditional to return 1 if index is even 
and 0 if index is odd.

We assign that value to a variable and, on the next line, we add it to an array, numbers. After #times has 
finished iterating, we're left with an array filled with 1s and 0s in the correct order. Now, all we have to 
do is invoke numbers.join to return the desired output.

Further Exploration
Modify stringy so it takes an additional optional argument that defaults to 1. If the method is called with 
this argument set to 0, the method should return a String of alternating 0s and 1s, but starting with 0 
instead of 1.
=end
