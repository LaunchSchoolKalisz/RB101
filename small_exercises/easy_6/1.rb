=begin
Cute angles
Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and 
returns a String that represents that angle in degrees, minutes and seconds. You should use a degree 
symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent 
seconds. A degree has 60 minutes, while a minute has 60 seconds.

Examples:

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

Note: your results may differ slightly depending on how you round values, but should be within a second or 
two of the results shown.

You should use two digit numbers with leading zeros when formatting the minutes and seconds, 
e.g., 321°03'07".

You may use this constant to represent the degree symbol:

DEGREE = "\xC2\xB0"

# Problem
- Create a method which takes 1 parameter (float)
- The float represents an angle between 0 and 360 degrees
- Returns aa string that represents the angle in degrees, minutes and seconds

Input: Float
Output: String

# Examples

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# Data 
Float 
String
Array?

# Algo
- Initialize constants
- Create a method which takes 1 parameter
- Returns a string, which represents the angle in degrees, minutes, and seconds


=end

DEGREE = "\xC2\xB0"
degree = 1
minute = degree * 60
second = minute * 60

def dms(angle)
  if angle % 60 == 0 || 60 % angle == 0
    degree = angle
    %(#{degree}#{DEGREE}00'00")
  else 
    degree = angle.to_i
    minute = (angle - degree) * 60
    second = (minute - minute.to_i) * 60
    %(#{degree}#{DEGREE}#{minute.to_i}'#{second.to_i}")
  end
end

puts dms(30) #== %(30°00'00")
puts dms(76.73) #== %(76°43'48")
puts dms(254.6) #== %(254°36'00")
puts dms(93.034773) #== %(93°02'05")
puts dms(0) #== %(0°00'00")
puts dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")

=begin
LS solution

Approach/Algorithm
There's a bit of elementary math here, but it's math that you will probably encounter somewhere in your career 
as a developer. If you need some help with the math needed here, check this page.

Solution

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

Discussion
We start by defining some useful constants - including the supplied DEGREE constant. These constants aren't 
essential, but they help with understanding what is going on in each step.

The method starts out by converting the number of degrees to seconds; this makes it easier to compute the 
whole number of degrees, minutes, and seconds. Next, we use divmod to get the whole number of degrees, and a 
remainder that represents the number of seconds in the fractional part of the original value. We then use 
divmod again to split the remainder into a whole number of minutes, and a whole number of seconds. The final 
step puts everything together with #Kernel.format.

It's worth noting that the desired output contains both single and double quote characters. Ruby provides a 
variety of ways to deal with quotes inside strings; the easiest uses %(), %q() or %Q() to delimit the string. 
We use %() here.

Further Exploration
Our solution returns the following results for inputs outside the range 0-360:

dms(400) == %(400°00'00")
dms(-40) == %(-40°00'00")
dms(-420) == %(-420°00'00")

Since degrees are normally restricted to the range 0-360, can you modify the code so it returns a value in the 
appropriate range when the input is less than 0 or greater than 360?

Copy Code
dms(400) == %(40°00'00")
dms(-40) == %(320°00'00")
dms(-420) == %(300°00'00")
