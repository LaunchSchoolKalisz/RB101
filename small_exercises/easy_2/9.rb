=begin
String Assignment
Take a look at the following code:

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name
What does this code print out? Think about it for a moment before continuing.

If you said that code printed

Alice
Bob
you are 100% correct, and the answer should come as no surprise. Now, let's look at something a bit different:

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name
What does this print out? Can you explain these results?

Should print 
BOB
BOB

Both name and save_name point to the same object. Upcase! mutates that object, changing both strings

LS Solution

BOB
BOB

Discussion
Does this result surprise you? It might, but it shouldn't. Because assignment in ruby just assigns a reference 
to a variable, both name and save_name refer to the same string, Bob. When you apply name.upcase!, which 
mutates name in place, the value that save_name references also changes. Thus, both name and save_name are set 
equal to 'BOB'.

If you answered this question incorrectly, please take some time to go back and read about Pass by Reference 
vs Pass by Value in Lesson 2 of Programming Foundations. To be successful with ruby, you absolutely must 
understand how ruby works with respect to pass by reference and pass by value.
=end
