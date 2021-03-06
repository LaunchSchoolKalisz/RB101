=begin
Array Average
Write a method that takes one argument, an array containing integers, and returns the average of all numbers 
in the array. The array will never be empty and the numbers will always be positive integers. Your result 
should also be an integer.

Examples:

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
The tests above should print true.

## Problem ##
- Write a method
- Take an array which contains integers
- Find the average of all the numbers in the array
- Rules
 - Array will not be empty
 - Integers always positive

Input: array containing integers
Output: integer

Integer or float division? Integer!

## Examples ##

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

## Data ##
Array
Integer

## Algorithm ##
- Initiate method which takes one argument (an array)
- Create a 'sum' variable
  - count the length of the array, 
  - add to 'sum' variable 
  - Sum the numbers from the array 
- assign thhe length of the array to 'divisor' variable
- Divide the sum by the length 

#Problem
- Count the lent

## Code ##
=end

=begin
def average(array)
  divisor = array.length
  sum = array.sum
  average = sum/divisor
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
=end

=begin
LS Solution

def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum / numbers.count
end

Discussion
Two things need to be done to find the average. First, add every number together. Second, divide the sum by 
the number of elements. We accomplish the first part by using Enumerable#reduce(also known as #inject), which 
combines all elements of the given array by applying a binary operation. This operation is specified by a 
block or symbol. We used a block in our solution, but we could have just as easily used a symbol, like this:

numbers.reduce(:+)

Once we have the sum, all that's left is to divide it by the number of elements. To do that, we use #count to 
count the number of elements in numbers. Then, we divide sum by the number of elements and return the quotient.

Further Exploration
Currently, the return value of average is an Integer. When dividing numbers, sometimes the quotient isn't a 
whole number, therefore, it might make more sense to return a Float. Can you change the return value of 
average from an Integer to a Float?
=end

# Further Exploration
def average(array)
  divisor = array.length
  sum = array.sum
  average = sum.to_f/divisor.to_f
end

def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum.to_f / numbers.count.to_f
end

puts average([1, 6]) #== 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) #== 25
puts average([9, 47, 23, 95, 16, 52]) #== 40