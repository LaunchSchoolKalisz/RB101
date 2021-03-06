=begin
Uppercase Check
Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the 
string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.

Examples:

uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

# Problem
- Create a method thaat takes a string
- Returns true if all characters are uppercase
- Else, false
- Nonalphabetic characters are ignored

Input: string
Output: boolean

# Data
String
Array
Boolean

# Algo
- Create an uppercase alphabet constant
- Create a method which takes 1 parameter (string)
- split the string into chars
- keep if alphabetic
- once we have an only alphabetic array
  - Check if all chars are uppercase
  - If so, true, else, false
=end

UPPERCASE_ALPHABET = ('A'..'Z').to_a

def uppercase?(string)
  clean_string = string.chars.keep_if {|char| UPPERCASE_ALPHABET.include?(char.upcase)}
  clean_string.all? {|char| UPPERCASE_ALPHABET.include?(char)}
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

=begin

LS Solution
def uppercase?(string)
  string == string.upcase
end

Discussion
The easiest way to solve this problem is to realize that the condition "all of the alphabetic characters...are 
uppercase" is true only if the string is not altered by converting it to all uppercase. Thus, all we need to is 
compare string with string.upcase.

Further Exploration
Food for thought: in our examples, we show that uppercase? should return true if the argument is an empty 
string. Would it make sense to return false instead? Why or why not?
=end
