=begin
When will I Retire?
Build a program that displays when the user will retire and how many years she has to work till retirement.

Example:

What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!

# Problem
- Write a program which asks for user's age, asks for age to retire
- Displays how many years left to work until retirement

# Examples
What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!

# Data
Dates
Strings
Integers

# Algo
- Prompt user for their age
- Store input in variable user_age
- Prompt user for age they would like to retire
- Store input in variable retirement_age
- Subtract retirement_age from user_age, store in years_until_retirement

# Code
=end
current_year = Time.now.year

puts "What is your age?"
user_age = gets.chomp.to_i
puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

years_until_retirement = retirement_age - user_age
retirement_year = current_year + years_until_retirement

puts "It is #{current_year}. You'll retire in #{retirement_year}"
puts "You have only #{years_until_retirement} years of work to go!"

=begin
LS Solution

print 'What is your age? '
current_age = gets.to_i

print 'At what age would you like to retire? '
retirement_age = gets.to_i

current_year = Time.now.year
work_years_to_go = retirement_age - current_age
retirement_year = current_year + work_years_to_go

puts "It's #{current_year}. You will retire in #{retirement_year}. "
puts  "You have only #{work_years_to_go} years of work to go!"

Discussion
In this solution, we use Time.now to get the current date. This returns a Time object. The Time class has a fairly useful method, 
Time#year that gives us the current year. From there we can determine the retirement year based on the two inputs and the current year.
=end