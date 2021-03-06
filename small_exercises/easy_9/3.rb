=begin
Always Return Negative
Write a method that takes a number as an argument. If the argument is a positive number, return the negative 
of that number. If the number is 0 or negative, return the original number.

Examples:

negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby

# Problem
- Write a method which takes 1 parameter
- If number is positive, return the negative
- If number is negative or 0, return the original

Input: Integer
Output: Integer

# Examples
negative(5) == -5
negative(-3) == -3
negative(0) == 0 

# Data 
- Integer

# Algo
- Create a method which takes 1 parameter (integer)
- If integer is positive, return integer * -1
- Else, return integer

# Code
=end

# def negative(num)
#   if num.positive?
#     num *= -1
#   end
#   num 
# end

def negative(num)
  num.positive? ? num *= -1 : num 
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0 

=begin
LS Solution

def negative(number)
  number > 0 ? -number : number
end

Discussion
There are only two choices here. Either make the number negative and return it or return the already negative 
number. This is the perfect place for a ternary.

The condition will check if the number is greater than zero. If so make it negative and return it; otherwise, 
return the already negative number.

Further Exploration
There is an even shorter way to write this but it isn't as immediately intuitive.

def negative(number)
  -number.abs
end
This works by flipping the problem on the head. It straightaway converts it to a positive number with 
Numeric#abs and then prepends it with a negative operator to make it negative. abs returns the absolute value 
of a number (the non-negative value of a number without regard to its sign).

Thus, instead of operating by checking the value and proceeding based on the evaluation, the opposite can be 
applied by stripping it of its sign, then giving it the negative sign.

This is clearly shorter. However is it superior?
=end
