class: middle, center

<style>
  img {
    max-width: 100%;
  }

  img[alt="left bad style example"] {
    max-width: 49%;
  }

    img[alt="right bad style example"] {
    max-width: 49%;
  }
</style>

# Pre-Ada Live

Rename yourself in Zoom with

    Preferred Name
    Pronouns


---

# Peer code review: Number Guessing Game

## Introduce Yourselves!

Pointers for code review:

* Ruby style guide: snake_case, spaces, comments, indentation

* Are all minimal requirements followed and working?

* Are any additional, optional requirements coded and working?

* User experience
    * Are the prompts useful, educational and sufficient for the user of the
      program who is unaware of the requirements?
    * What if the user enters information in an incorrect format? (case
      insensitive input, detailed error messages, prompt for re-entry)
* P.S. For easier code reviews, save files with `.rb` extensions in your gists.
  This allows for better formatting. Saving multiple `.rb` files helps scope
  the feedback and test code as you make changes

---

# What will get printed on the terminal?

```ruby
x = 1
y = 2
z = 3

if z * x - y > 0
  puts "positive"
else
  puts "zero or negative"
end
```

Reference: [boolean expressions](https://github.com/Ada-Developers-Academy/jump-start-live/blob/master/lessons/day2/boolean_expressions.md)

???

* Multiplication has a higher precedence than subtraction
* Try it yourself - save the code to a `.rb` file and run it

--

```console
CheezItMan@ada:~$ ruby exercise.rb
positive
```

---

# What will get printed on the terminal?

```ruby
x = 1
y = 2
z = 3

if z * (x - y) > 0
  puts "positive"
else
  puts "zero or negative"
end
```
Reference: [boolean expressions](https://github.com/Ada-Developers-Academy/jump-start-live/blob/master/lessons/day2/boolean_expressions.md)

???

* Parenthesis has a higher precedence than either multiplication or subtraction
* Try it for yourself! Get comfortable saving and running files on your
  computer

--

```console
ChrisM@ada:~$ ruby exercise.rb
zero or negative
```

---

# What will get printed on the terminal?

```ruby
x = 2
y = -2
z = 4

if x = 1 || y = -1
  puts "x = 1 or y = -1"
elsif z = 4
  puts "z = 4"
end
```
Reference: [boolean expressions](https://github.com/Ada-Developers-Academy/jump-start-live/blob/master/lessons/day2/boolean_expressions.md)

???

Tricky!
* A single equals (`=`) is an assignment expression
* This should be a double equals sign (`==`), an equality check, instead
* The assignment expression `x = 1` evaluates to `1`, which is a truthy value
  in Ruby

--

```console
chrisM@ada:~$ ruby exercise.rb
exercise.rb:7: warning: found `= literal' in conditional, should be ==
x = 1 or y = -1
```

---

# What will get printed on the terminal?

```ruby
x = 2
y = -2
z = 4

if x == 3 || 4
  puts "x is 3 or 4"
else
  puts "x is not 3 or 4"
end
```
Reference: [boolean expressions](https://github.com/Ada-Developers-Academy/jump-start-live/blob/master/lessons/day2/boolean_expressions.md)

???

More tricks!
* `4` is a truthy value, so `x == 3 || 4` will always evaluate to true
* In Ruby, everything is `truthy` except for `nil` and `false`

--

```console
ChrisM@ada:~$ ruby exercise.rb
x is 3 or 4
```

---

# Exercise

* If the value of the variable `x` is `2`, the value of the variable `y` is `-2`,
  and the value of the variable `z` is `4`, write a conditional statement that
  prints `"it's true"` if `x` is greater than `0` and `y` is less than `0`.

* **Challenge** - come up with a different way to write the conditional
  statement that behaves the same. Hint: use negation (`!`).

```ruby
x = 2
y = -2
z = 4
```

--

```ruby
# Option 1
if x > 0 && y < 0
  puts "it's true!"
end
```

--

```ruby
# Option 2
if !(x <= 0 || y >= 0)
  puts "it's true!"
end
```

[De Morgan's laws](https://github.com/Ada-Developers-Academy/jump-start-live/blob/master/lessons/day2/boolean_expressions.md#demorgans-laws)

---

# What does the code below do?

```ruby
print "What size drink would you like? (SHORT or TALL or GRANDE): "
order = gets.chomp.upcase

if order == "SHORT"
  puts "8"
elsif order == "TALL"
  puts "12"
else order == "GRANDE"
  puts "16"
end
```

???

* Everything besides short and tall fall in the `else` block
* `order == "GRANDE"` is actually a statement within the else, but it was
  mistakenly put on the wrong line

--

```console
ChrisM@ada:~$ ruby exercise.rb
What size drink would you like? (SHORT or TALL or GRANDE): short
8
```

--

```console
chrisM@ada:~$ ruby exercise.rb
What size drink would you like? (SHORT or TALL or GRANDE): grande
16
```

--

```console
chrisM@ada:~$ ruby exercise.rb
What size drink would you like? (SHORT or TALL or GRANDE): no thank you
16
```

---

# What does the code below do?

```ruby
print "What size drink would you like? (SHORT or TALL or GRANDE): "
order = gets.chomp.upcase

if order == "SHORT"
  puts "8"
elsif order == "TALL"
  puts "12"
*else order == "GRANDE"
  puts "16"
end
```

---

# What does the code below do?

```ruby
print "What size drink would you like? (SHORT or TALL or GRANDE): "
order = gets.chomp.upcase

if order == "SHORT"
  puts "8"
elsif order == "TALL"
  puts "12"
else
* order == "GRANDE"
  puts "16"
end
```

--

But this was probably meant to be an `elsif` statement

---

# What does the code below do?

```ruby
print "What size drink would you like? (SHORT or TALL or GRANDE): "
order = gets.chomp.upcase

if order == "SHORT"
  puts "8"
elsif order == "TALL"
  puts "12"
elsif order = "GRANDE"
  puts "16"
else
  puts "unknown size"
end
```

--

```console
ChrisM@ada:~$ ruby exercise.rb
exercise.rb:8: warning: found `= literal' in conditional, should be ==
What size drink would you like? (SHORT or TALL or GRANDE): grande
16
```

```console
ChrisM@ada:~$ ruby exercise.rb
exercise.rb:8: warning: found `= literal' in conditional, should be ==
What size drink would you like? (SHORT or TALL or GRANDE): no thank you
16
```

---

# What does the code below do?
```ruby
print "What size drink would you like? (SHORT or TALL or GRANDE): "
order = gets.chomp.upcase

if order == "SHORT"
  puts "8"
elsif order == "TALL"
  puts "12"
*elsif order = "GRANDE"
  puts "16"
else
  puts "unknown size"
end
```

```console
ChrisM@ada:~$ ruby exercise.rb
*exercise.rb:8: warning: found `= literal' in conditional, should be ==
What size drink would you like? (SHORT or TALL or GRANDE): grande
16
```

```console
ChrisM@ada:~$ ruby exercise.rb
*exercise.rb:8: warning: found `= literal' in conditional, should be ==
What size drink would you like? (SHORT or TALL or GRANDE): no thank you
16
```

---

# What does the code below do?
```ruby
print "What size drink would you like? (SHORT or TALL or GRANDE): "
order = gets.chomp.upcase

if order == "SHORT"
  puts "8"
elsif order == "TALL"
  puts "12"
*elsif order == "GRANDE"
  puts "16"
else
  puts "unknown size"
end
```

```console
ChrisM@ada:~$ ruby exercise.rb
What size drink would you like? (SHORT or TALL or GRANDE): grande
16
```

```console
ChrisM@ada:~$ ruby exercise.rb
What size drink would you like? (SHORT or TALL or GRANDE): no thank you
*unknown size
```

---

# Exercise 8 discussion: drink sizes
```ruby
# Prompt for a one of the following: SHORT, TALL, GRANDE, VENTI.
# Print out the number of ounces that drink includes (8, 12, 16, 20 respectively).
```

--

.left-column[
```ruby
# Option 1
puts "SHORT, TALL, GRANDE, or VENTI? "
order = gets.chomp.upcase
if order == "SHORT"
  print "8"
elsif order == "TALL"
  print "12"
elsif order == "GRANDE"
  print "16"
elsif order == "VENTI"
  print "20"
else
  print "unknown size"
end
```
]

--

.right-column[
```ruby
# Option 2
puts "SHORT, TALL, GRANDE, or VENTI? "
order = gets.chomp.upcase
if order == "SHORT"
  print "8"
end
if order == "TALL"
  print "12"
end
if order == "GRANDE"
  print "16"
end
if order == "VENTI"
  print "20"
end
```
]

--

Why is option 1 better than option 2?

???

* Once the correct value is found, the rest of the conditionals will not be
  evaluated

---


class: middle, center

# Discussion - user input retries

Which option should we choose?

---

.left-column[
```ruby
# Option 1
puts "How much money do you have? "
money = gets.chomp
if money.to_i.to_s != money
  puts "Not a number, try again"
  exit # exit program
else
  money = money.to_f
  # ... remaining program logic
end
```
]

--

.right-column[
```ruby
# Option 2
puts "How much money do you have? "
money = gets.chomp
while money.to_i.to_s != money
  puts "Not a number, try again"
  puts "How much money do you have? "
  money = gets.chomp
end
money = money.to_f
# ... remaining program logic
```
]

--

```ruby
# Option 3
puts "How much money do you have? "
money = gets.chomp
attempt = 0
while money.to_i.to_s != money
  if attempt < 3
    puts "Not a number, try again"
    puts "How much money do you have? "
    money = gets.chomp
    attempt += 1
  else
    puts "Not a number, exiting"
    exit # no more chances
  end
end
money = money.to_f
puts "money: $ #{money}"
# ... remaining program logic
```

???

Which one is better?
* It depends on the context, there are no wrong answers in this case.

* Option 1 most closely resembles a command-line program - it fails fast and
  gives the user back their prompt.

* Option 2, with an infinite loop, would make sense in an embedded system like
  a vending machine.

* Option 3 would be good for a website login system. Guarding attempts helps
  deter malicious attackers.

---

# What is this line doing?

```ruby
*while money.to_i.to_s != money
  # ... prompt user again to enter a value
end
```

???

Everybody follow along on their laptops

--

.left-column[
```ruby
ChrisM@ada:~$ irb
irb(main):001:0> x = gets.chomp
50  # <-- enter in a number
irb(main):002:0> x
=> "50"
irb(main):003:0> x.to_i
=> 50
irb(main):004:0> x.to_i.to_s
=> "50"
irb(main):005:0> x.to_i.to_s != x
=> false
```
]

???

* `to_i` and `to_s` are both methods that you can call on an object
* `to_i` converts an object into an integer
* `to_s` converts an object into a string

--

.right-column[
```ruby
ChrisM@ada:~$ irb
irb(main):001:0> x = gets.chomp
help  # <-- enter a word
irb(main):002:0> x
=> "help"
irb(main):003:0> x.to_i
=> 0
irb(main):004:0> x.to_i.to_s
=> "0"
irb(main):005:0> x.to_i.to_s != x
=> true
```
]

---

# Debrief

* What new things did you learn today?

* What topics are you still struggling with?

* What did you especially enjoy about today's class?

* What can be improved for future classes?

---

# Give us feedback

[Give us feedback](https://airtable.com/shraPA0Opxd8fzOmY)
