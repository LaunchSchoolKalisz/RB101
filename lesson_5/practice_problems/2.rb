=begin
Practice Problem 2
How would you order this array of hashes based on the year of publication of each book, from the earliest to 
the latest?

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

# Problem
- Given an array of hashes
- Order the array based on the year of publication 
- Earliest to latest

Input: Array
Output: Array

# Example
books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

==> books = [
      {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
      {title: 'Ulysses', author: 'James Joyce', published: '1922'},
      {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
      {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'}
    ]

# Data
- Array
- Hash
- String (value)
- Integer

#Algo
- Access hash values
- Convert hash values into integers
- Sort array by hash values
- Return sorted array
=end

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

books.sort_by! do |hash| 
    hash[:published].to_i
end
p books

=begin
books.sort_by do |book|
  book[:published]
end

# => [
# {:title=>"War and Peace", :author=>"Leo Tolstoy", :published=>"1869"},
# {:title=>"Ulysses", :author=>"James Joyce", :published=>"1922"},
# {:title=>"The Great Gatsby", :author=>"F. Scott Fitzgerald", :published=>"1925"},
# {:title=>"One Hundred Years of Solitude", :author=>"Gabriel Garcia Marquez", :published=>"1967"}
# ]
We can use sort_by and access a particular value in each hash by which to sort, as long as those values have a 
<=> method.

In this case, all the values for :published are strings so we know that we can compare them. Since all the 
values in question are four characters in length, in this case we can simply compare the strings without 
having to convert them to integers.
=end
