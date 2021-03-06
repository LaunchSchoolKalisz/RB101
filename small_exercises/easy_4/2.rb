=begin
What Century is That?
Write a method that takes a year as input and returns the century. The return value should be a string that 
begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

Examples:

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

# Problem
- Create a method with 1 argument (year)
- Return a string with the appropriate cenury number for that year

Input: Integer
Output: String

# Examples

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(100) == '1st'
centruy(101) = '2nd'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

# Data

# Algo
DETERMINE CENTURY
For numbers 101 and greater:
  - If we take the last 2 digits off of the year, century is that number plus 1
  - If the last 2 digits are 00, century is that number
For numbers less than 101:
  1st century

DETERMINE ENDING
- If century adds in 11, 12, 13
  - add th
Else
  - If century ends in 1
    - add st
  - If century ends in 2
    - add nd
  - If century ends in 3
    - add rd
  - Else
    - add th

# Code
=end

def century(year)
  if year > 100
    if year.to_s.end_with? ('00')
      century = year / 100
    else
      century = (year/100) + 1
    end
  else
    century = 1
  end
  suffix(century)
end

def suffix(century)
  if century.to_s.end_with?('11', '12', '13')
    century.to_s + 'th'
  else
    if century.to_s.end_with?('1')
      century.to_s + 'st'
    elsif century.to_s.end_with?('2')
      century.to_s + 'nd'
    elsif century.to_s.end_with?('3')
      century.to_s + 'rd'
    else
      century.to_s + 'th'
    end
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

=begin
LS Solution

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

Discussion
First, notice a pattern about a century. It is equal to the current year divided by 100 plus 1. The exception 
to this is if the year is some multiple of 100. In that case, the century is the current year divided by 100.

Next we need to understand which suffix to append for our century, the options being: 'th', 'nd', 'rd', 'st'. 
We decide which one to use by checking the last digit of the century. Though, before we do that, we do need to 
do one extra check. If the century's value mod 100 ends in either 11, 12, or 13, then we should return 'th'. 
Any other time, we can return a suffix determined by our case statement and the value of century % 10.

Finally, we combine the string representation of the century with the correct suffix, and we have our answer.
=end
