=begin
Searching 101

Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 
6th number appears amongst the first 5 numbers.

Examples:

==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].

# Problem
- Create a problem that asks the user for 6 numbers
- Checks if the 6th number appears in the previous 5 numbers

# Algo
- Initiate an empty array
- Ask the user for 6 numbers
- Add the first 5 numbers to an array
- Check to see if the array contains the 6th number
- Output whether or not the array contains the 6th number
=end

array = []

until array.size == 5
  puts "Please enter a number:"
  num = gets.chomp
  array << num
end

puts "Please enter the last number"
last_num = gets.chomp

if array.include?(last_num)
  puts "The number #{last_num} appears in #{array}."
else
  puts "The number #{last_num} does not appear in #{array}."
end