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
    current_volunteer[0] << gets.chomp

    print "Email address? "
    current_volunteer[1] << gets.chomp

    print "How many hours can you volunteer for? "
    current_volunteer[2] << gets.chomp.to_f

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

# TODO: stopped at slide 10
