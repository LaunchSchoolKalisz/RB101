=begin
Exclusive Or
The || operator returns a truthy value if either or both of its operands are truthy, a falsey value if both 
operands are falsey. The && operator returns a truthy value if both of its operands are truthy, and a falsey 
value if either operand is falsey. This works great until you need only one of two conditions to be truthy, 
the so-called exclusive or.

In this exercise, you will write a function named xor that takes two arguments, and returns true if exactly 
one of its arguments is truthy, false otherwise. Note that we are looking for a boolean result instead of a 
truthy/falsy value as returned by || and &&.

Examples:

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

# Problem
- Create a method which takes 2 arguments
- returns true if exactly ONE of its arguments us truthy, otherwise false
  - true,true == false
  - true, false == true
  - false, true == true
  - false, false == false
- Result should be boolean

Input: 2 arguments 
Output: boolean

# Algo
- Create a method which accepts 2 arguments
- If arg 1 = true & arg 2 = true
  - false
- If arg 1 =false & aarg 2 = false
  - false
- else, return true
=end

def xor? (arg_1, arg_2)
  if arg_1 == true && arg_2 == true
    false
  elsif arg_1 == false && arg_2 == false
    false
  else
    true
  end
end


p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false