class: middle, center

# JumpStart Live Day 6
You made it!

![](https://cultofthepartyparrot.com/parrots/hd/parrot.gif)
![](https://cultofthepartyparrot.com/parrots/hd/laptop_parrot.gif)
![](https://cultofthepartyparrot.com/parrots/hd/reverseparrot.gif)

---

# Learning goals
After today, you should be able to

* construct a nested data structure using arrays and hashes

* explain how to navigate a nested data structure

---

# Consider a volunteer registration desk

* One volunteer at a time steps up to the desk to register. On a paper with a
  pen, you take down notes of their

    * name

    * email address

    * number of hours they can volunteer this week

* What does this manually maintained information look like?

---

# Registration desk cont.

Volunteer name | Email address | Hours available
---|---|---
Harry Potter | harry.potter@hogwarts.com | 15
Hermione Granger | hermione.granger@hogwarts.com | 25
Ron Weasley | ron.weasley@hogwarts.com | 10

--

* Looks like a table / spreadsheet

* Each person has their own row

* Information about the person is categorized into columns

How would you create a program to hold this information?

---

# Approach #1, parallel arrays

Volunteer name | Email address | Hours available
---|---|---
Harry Potter | harry.potter@hogwarts.com | 15
Hermione Granger | hermione.granger@hogwarts.com | 25
Ron Weasley | ron.weasley@hogwarts.com | 10

* each column gets its own array

* loop and prompt for user input

* store responses in their respective array

Parallel arrays are also sometimes called synchronized arrays

---

# Approach #1, parallel arrays

```ruby
names = Array.new()
email_addresses = Array.new()
hours_available = Array.new()

print "How many volunteers are in line? "
num_volunteers = gets.chomp.to_i

# no need for a block parameter, |i|, we don't use it
num_volunteers.times do
    print "Name? "
    names << gets.chomp

    print "Email address? "
    email_addresses << gets.chomp

    print "How many hours can you volunteer for? "
    hours_available << gets.chomp.to_f
end

puts "\nHere's the volunteer list:"
puts "Volunteer name\tEmail address\tHours available"
num_volunteers.times do |i|
    puts "#{names[i]}\t#{email_addresses[i]}\t#{hours_available[i]}"
end
```

---

# Approach #1, parallel arrays

```ruby
names = Array.new()
email_addresses = Array.new()
hours_available = Array.new()
```

While this approach works, there are pitfalls.

* The programmer has to manage synchronizing entries in the parallel array

* Adding, deleting, and editing entries becomes more cumbersome because of this

    * **Do not sort** one array without keeping the other arrays synchronized
      with the entries.

---

class: middle, center

# What other approaches are there?

---

# Approach #2, multi-dimensional array

Volunteer name | Email address | Hours available
---|---|---
Harry Potter | harry.potter@hogwarts.com | 15
Hermione Granger | hermione.granger@hogwarts.com | 25
Ron Weasley | ron.weasley@hogwarts.com | 10

* one large array to hold everything

* each volunteer becomes a new array within the larger array

* columns are stored sequentially in an individual volunteer's array

Also called 2D arrays, or matrices (matrix)

---

# Approach #2, multi-dimensional array

```ruby
volunteers = []

print "How many volunteers are in line? "
num_volunteers = gets.chomp.to_i

num_volunteers.times do
    current_volunteer = []

    print "Name? "
    current_volunteer[0] = gets.chomp

    print "Email address? "
    current_volunteer[1] = gets.chomp

    print "How many hours can you volunteer for? "
    current_volunteer[2] = gets.chomp.to_f

    volunteers << current_volunteer
end

puts "\nHere's the volunteer list:"
puts "Volunteer name\tEmail address\tHours available"
volunteers.each do |volunteer|
    puts "#{volunteer[0]}\t#{volunteer[1]}\t#{volunteer[2]}"
end
```

---

# Approach #2, multi-dimensional array

```ruby
volunteers = []

...

num_volunteers.times do
    current_volunteer = []

    print "Name? "
    current_volunteer[0] = gets.chomp

    ...

    volunteers << current_volunteer
end
```

While this approach works, there are pitfalls.

* The programmer no longer needs to manage synchronizing multiple arrays (**this
  is good**)

* But the mapping from column names to indices is still tribal knowledge that
  the programmer has to manage

---

# What will happen
In each scenario?

.left-column[
```ruby
volunteers = []

2.times do
*   volunteer = []

    print "Name? "
    volunteer[0] = gets.chomp

    print "Hours per week? "
    volunteer[1] = gets.chomp.to_f

    volunteers << volunteer
end

print volunteers
```
]

.right-column[
```ruby
volunteers = []

*volunteer = []
2.times do

    print "Name? "
    volunteer[0] = gets.chomp

    print "Hours per week? "
    volunteer[1] = gets.chomp.to_f

    volunteers << volunteer
end

print volunteers
```
]

---

# What will happen
If `volunteer` is declared **inside** the loop?

.left-column[
```ruby
volunteers = []

2.times do
*   volunteer = []

    print "Name? "
    volunteer[0] = gets.chomp

    print "Hours per week? "
    volunteer[1] = gets.chomp.to_f

    volunteers << volunteer
end

print volunteers
```
]

.right-column[
```console
brooks@ada:~$ ruby exercise.rb
Name? Hermione
Hours per week? 25
Name? Ron
Hours per week? 10
[["Hermione", 25.0], ["Ron", 10.0]]
```
]

---

# What will happen
If `volunteer` is declared **outside** the loop?

.left-column[
```ruby
volunteers = []

*volunteer = []
2.times do

    print "Name? "
    volunteer[0] = gets.chomp

    print "Hours per week? "
    volunteer[1] = gets.chomp.to_f

    volunteers << volunteer
end

print volunteers
```
]

.right-column[
```console
brooks@ada:~$ ruby exercise.rb
Name? Hermione
Hours per week? 25
Name? Ron
Hours per week? 10
[["Ron", 10.0], ["Ron", 10.0]]
```

Oops! The values inside `volunteer` were re-assigned, but `volunteer` never
was.

We pushed two of the same `volunteer` into the `volunteers` array.
]


---

# Reviewing Account Generator Submission
Identify

* Two things you learned
* One things you would like to work on

https://github.com/Ada-Developers-Academy/jump-start/blob/master/learning-to-code/hashes/assignments/account-generator-cont.md

---

# Symbol vs string object_ids
Open `irb` and try these for yourself. What do you notice?

.left-column[
```ruby
irb(main):01:0> my_symbol = :one
irb(main):02:0> my_string = "one"
irb(main):03:0> your_symbol = :one
irb(main):04:0> your_string = "one"
irb(main):05:0> my_symbol.object_id
=>
irb(main):06:0> your_symbol.object_id
=>
irb(main):07:0> my_string.object_id
=>
irb(main):08:0> your_string.object_id
=>
irb(main):09:0> my_string = your_string
irb(main):10:0> my_string.object_id
=>
irb(main):11:0> my_symbol = :two
irb(main):12:0> my_symbol.object_id
=>
irb(main):13:0> your_symbol.object_id
=>
```
]

---

# Symbol vs string object_ids
Open `irb` and try these for yourself. What do you notice?

.left-column[
```ruby
irb(main):01:0> my_symbol = :one
irb(main):02:0> my_string = "one"
irb(main):03:0> your_symbol = :one
irb(main):04:0> your_string = "one"
irb(main):05:0> my_symbol.object_id
=> 1999388
irb(main):06:0> your_symbol.object_id
=> 1999388
irb(main):07:0> my_string.object_id
=> 47127533032740
irb(main):08:0> your_string.object_id
=> 47127533274320
irb(main):09:0> my_string = your_string
irb(main):10:0> my_string.object_id
=> 47127533274320
irb(main):11:0> my_symbol = :two
irb(main):12:0> my_symbol.object_id
=> 2004828
irb(main):13:0> your_symbol.object_id
=> 1999388
```
]

--

.right-column[
* symbols with the same value are the same object

* strings declared with the same value are different objects

* but if one string is assigned to another, they become the same object

* symbols with different values are different objects
]

---

# Hash keys: use symbols instead of strings
The more hash objects there are, the more memory efficient it is to use symbols
for keys.

Instead of this
```ruby
# Hashrocket string notation
person = {
    "first_name" => "Hermione",
    "last_name" => "Granger",
    "occupation" => "student"
}
```

Do this
```ruby
# Symbol notation
person = {
    # shorthand for :first_name => "Hermione",
    first_name: "Hermione",
    last_name: "Granger",
    occupation: "student"
}
```

---

class: middle, center

# Back to the volunteer registration desk

Could we use hashes?

---

# Approach #3, array of hashes

Volunteer name | Email address | Hours available
---|---|---
Harry Potter | harry.potter@hogwarts.com | 15
Hermione Granger | hermione.granger@hogwarts.com | 25
Ron Weasley | ron.weasley@hogwarts.com | 10

* one large array to hold everything

* each volunteer becomes a new **hash** within the larger array

* columns become keys in the hash

---

# Approach #3, array of hashes

```ruby
volunteers = [] # or Array.new

print "How many volunteers are in line? "
num_volunteers = gets.chomp.to_i

num_volunteers.times do
    current_volunteer = Hash.new # or {}

    print "Name? "
    current_volunteer[:name] = gets.chomp

    print "Email address? "
    current_volunteer[:email] = gets.chomp

    print "How many hours can you volunteer for? "
    current_volunteer[:hours_available] = gets.chomp.to_f

    volunteers << current_volunteer
end

puts "\nHere's the volunteer list:"
puts "Volunteer name\tEmail address\tHours available"
volunteers.each do |volunteer|
    print "#{volunteer[:name]}"
    print "\t#{volunteer[:email]}"
    puts "\t#{volunteer[:hours_available]}"
end
```

---

# Arrays or hashes?

* Arrays are an ordered list of items. The order is based on indexing.

* Hashes are unordered list of key-value pairs. The key is not limited to 0 and
  positive integers.

* With hashes, the programmer no longer has to maintain and manage tribal
  knowledge of mapping column names to index values.

* However, to maintain a list of ordered entries (eg: the next applicant in
  line, or ascending/descending ordered values), arrays are the data structure
  you're looking for

---

# TODO: stopped at slide 16

---

