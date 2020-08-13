class: middle, center

# JumpStart Live Day 4
Classroom exercises

---

# Instructor code review

From [day 3 exercises](https://github.com/Ada-Developers-Academy/jump-start-live/tree/master/lessons/day3#exercises)

You don't trust your users. Modify the program below to
require the user to enter the same value twice in order to add that value to
the total.
```ruby
puts "Hello! We are going to total some numbers!"
puts "Enter a negative number to quit."

total = 0
input = gets.chomp.to_i
while input > -1
  total += input
  input = gets.chomp.to_i
end

puts "Result: #{total}"
```

---

# Instructor code review
What could make this code better?

```ruby
puts "Hello! We are going to total some numbers!"
puts "Each number should be entered twice to be accepted."
puts "Enter a negative number (twice) to quit."

total = 0
input = gets.chomp.to_i
confirmedInput = gets.chomp.to_i

while true # infinite loop, quit on break
  if input == confirmedInput
    if input < 0 # time to quit
      break
        else # add to total
          total += input
        end
    # get new inputs
    input = gets.chomp.to_i
    confirmedInput = gets.chomp.to_i
  else # inputs don't match, assume confirmedInput to be new input
    input = confirmedInput
    confirmedInput = gets.chomp.to_i
  end
end

puts 'Result: #{total}'
```

???

Code review callouts
* Style: indentation on `else` after the `break` should be on the same level as
  `if`

* After the first three `puts` in the beginning of the program, there are no
  other messages displayed to the user, so it's not very user friendly

* Are there better/other loops that could have been used instead of infinite
  loop + break case?

* The last `puts` uses single quotes instead of double, so string interpolation
  won't work

* `confirmedInput` is camelcase, not snake_case as is recommended

---

# What does the code below do?

```ruby
print "Enter a number between 1 and 10: "
number = gets.chomp.to_i

while number < 1 || number > 10
    print "Not in range. Enter a number between 1 and 10: "
end

number = gets.chomp.to_i
puts "#{number} it is, then!"
```

???

Bugs:
* If the number is in range, asks for a number again
* If the number isn't in range, enters an infinite loop of printing
    * Try it out yourself! Remember, to control+c to stop it.

How can we fix this?

--

<hr>

```ruby
print "Enter a number between 1 and 10: "
number = gets.chomp.to_i

while number < 1 || number > 10
    print "Not in range. Enter a number between 1 and 10: "
*   number = gets.chomp.to_i
end

puts "#{number} it is, then!"
```

---

# Convert to an `until` loop

```ruby
print "Enter a number between 1 & 10: "
number = gets.chomp.to_i

while number < 1 || number > 10
    print "Not in range. Try again: "
    number = gets.chomp.to_i
end

puts "#{number} it is, then!"
```

--

<hr>

.left-column[
```ruby
# Version 1
print "Enter a number between 1 & 10: "
number = gets.chomp.to_i

# simply negate the while condition
until !(number < 1 || number > 10)
    print "Not in range. Try again: "
    number = gets.chomp.to_i
end

puts "#{number} it is, then!"
```
]

--

.right-column[
```ruby
# Version 2
print "Enter a number between 1 & 10: "
number = gets.chomp.to_i

until number >= 1 && number <= 10
    print "Not in range. Try again: "
    number = gets.chomp.to_i
end

puts "#{number} it is, then!"
```
]

---

# `.times` loops and `.each` iterators

What will get printed?

```ruby
my_array = ["apples", "bananas", "oranges"]

my_array.count.times do |x|
    puts x
end

my_array.each do |x|
    puts x
end
```

???

* the `.times` loop will print the index values (0, 1, 2)
* the `.each` iterator will print the fruit names (apples, bananas, oranges)

--

.left-column[
```console
ari@ada:~$ ruby fruit.rb
0
1
2
apples
bananas
oranges
```
]

--

.right-column[
How can I use the `.times` loop to print the fruit names?
]

--

.right-column[
```ruby
my_array.count.times do |x|
    puts my_array[x]
end
```
]

---

# Choose descriptive variable names

```ruby
my_array = ["apples", "bananas", "oranges"]

my_array.count.times do |x|
    puts x
end

my_array.each do |x|
    puts x
end
```

vs

```ruby
fruit = ["apples", "bananas", "oranges"]

fruit.count.times do |i|
    puts i
end

fruit.each do |fruit|
    puts fruit
end
```

???

* Variables should describe that they contain or do
* Variables that are too vague make it harder to reason about what code is
  doing. For larger code-bases this is especially true.

--

**i** is very commonly used as the index variable when looping

---

# Fence post problem
Complete the following program - create a fence post based on user input

```ruby
puts "Let's create a fence. We need at least 2 fence posts"
print "How many fence posts would you like? "
num_posts = gets.chomp.to_i

# assume that the user enters a valid integer input > 2
```

--

.left-column[
```console
How many fence posts would you like? 2
|--|
```
]

.right-column[
```console
How many fence posts would you like? 10
|--|--|--|--|--|--|--|--|--|
```
]

--

.left-column[
```ruby
# Solution 1
(num_posts.to_i - 1).times do
    print "|--"
end

# add the final post "|" without a "-"
puts "|"
```
]

.right-column[
```ruby
# Solution 2
print "|" # place starting post

(num_posts.to_i - 1).times do
    print "--|"
end

puts # add a final newline
```
]

---

# Exercise: fence post

Complete the following program

```ruby
puts "I'm throwing a party for my friends!"
print "Let me tell you who's coming... "
friends = ["Harry", "Hermione", "Ron", "Luna"]

count = friends.count
```
List all the friends in a sentence. Their names should appear on the same line,
and without any surrounding brackets. For example:

```console
brooks@ada:~$ ruby harry.rb
I'm throwing a party for my friends!
Let me tell you who's coming... Harry, Hermione, Ron, Luna.
```
```console
brooks@ada:~$ ruby harry.rb
I'm throwing a party for my friends!
Let me tell you who's coming... Harry, Hermione, Ron and Luna.
```
```console
brooks@ada:~$ ruby harry.rb
I'm throwing a party for my friends!
Let me tell you who's coming... Harry, Hermione, Ron, and Luna.
```

---

# Fence post - solution 1

```ruby
puts "I'm throwing a party for my friends!"
print "Let me tell you who's coming... "
friends = ["Harry", "Hermione", "Ron", "Luna"]
```

```ruby
# first friend name outside the loop
print friends[0]

# loop through the rest of the friends and print them out
(friends.count - 1).times do |i|
    print ", #{friends[i + 1]}"
end

puts "."
```

<hr>

```console
ari@ada:~$ ruby harry.rb
I'm throwing a party for my friends!
Let me tell you who's coming... Harry, Hermione, Ron, Luna.
```

---

# Fence post - solution 2

```ruby
puts "I'm throwing a party for my friends!"
print "Let me tell you who's coming... "
friends = ["Harry", "Hermione", "Ron", "Luna"]
```

```ruby
# first friend name outside the loop
print friends[0]

# loop through the all but two friends
(friends.count - 2).times do |i|
    print ", #{friends[i + 1]}"
end

# print the last friend
puts " and #{friends[-1]}"
```

<hr>

```console
ari@ada:~$ ruby harry.rb
I'm throwing a party for my friends!
Let me tell you who's coming... Harry, Hermione, Ron and Luna.
```

---

# Fence post - solution 3

```ruby
puts "I'm throwing a party for my friends!"
print "Let me tell you who's coming... "
friends = ["Harry", "Hermione", "Ron", "Luna"]
```

```ruby
# loop through all but one friend
(friends.count - 1).times do |i|
    print "#{friends[i + 1]}, "
end

# print the last friend
puts " and #{friends[-1]}"
```

<hr>

```console
ari@ada:~$ ruby harry.rb
I'm throwing a party for my friends!
Let me tell you who's coming... Harry, Hermione, Ron, and Luna.
```

---

# Boolean zen
Change the following pieces of code to follow [boolean
zen](https://github.com/Ada-Developers-Academy/jump-start-live/blob/master/lessons/day4/boolean_zen.md)

.left-column[
```ruby
# exercise 1
flag = true
puts "Flag is #{flag}"
while flag == true
    if 2 < 4 == true
        flag = false
        puts "Flag is now #{flag}"
    end
end
```
]

.right-column[
```ruby
# exercise 2
flag = false
puts "Flag is #{flag}"
while flag == false
    if 2 > 4 == false
        flag = true
        puts "Flag is now #{flag}"
    end
end
```
]

--

.left-column[
```ruby
# solution 1
flag = true
puts "Flag is #{flag}"
*while flag
*   if 2 < 4
        flag = false
        puts "Flag is now #{flag}"
    end
end
```
]

--

.right-column[
```ruby
# solution 2
flag = false
puts "Flag is #{flag}"
*while !flag
*   if !(2 > 4) # or 2 <= 4
        flag = true
        puts "Flag is now #{flag}"
    end
end
```
]

---

# Get a jump start on day 5 exercises

https://github.com/Ada-Developers-Academy/jump-start-live/tree/master/lessons/day5#exercises

---

# Debrief

* Why are arrays useful in programming?

* What topics are you still struggling with?

* What did you especially enjoy about today's class?

* What can be improved for future classes?
