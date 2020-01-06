class: middle, center

# JumpStart Live
Day 5

---

# Warm up
With your table
* Share what class you are in

* Share what you learned from our last two sessions about loops

* Code review someone else's code for [Student Account Generator Part 1](https://github.com/Ada-Developers-Academy/jump-start/blob/master/learning-to-code/arrays/assignments/account-generator.md)

???

Should take ~25 minutes. 5 minutes to share, and 20 minutes to code review.

---

# What is the result?

With a partner, come up with

.left-column[
```ruby
# 1
names = ["legolas"]
names.nil?
```

```ruby
# 2
names = [nil]
names.nil?
```

```ruby
# 3
names = nil
names.nil?
```
]

.right-column[
```ruby
# 4
names = []
names.nil?
```

```ruby
# 5
names = ["legolas"]
names[5]
```

```ruby
# 6
names = ["legolas"]
names[-1]
```
]

???

* `nil` is an object in ruby, that represents the absense of a thing.

---

# Write a program
Write a program to print if the user entered a valid Lord of the Rings
character or not.

```ruby
characters = %w(aragorn gandalf gimli legolas frodo sam)

print "Who is your favorite Lord of the Rings character? "
favorite_character = gets.chomp
```

--

```ruby
if characters.include?(favorite_character)
  puts "That's a valid LoTR character"
else
  puts "That's not a LoTR character"
end
```

---

# Write a program
Write a program to print if the user entered a valid Lord of the Rings
character or not.

```ruby
characters = %w(aragorn gandalf gimli legolas frodo sam)

print "Who is your favorite Lord of the Rings character? "
favorite_character = gets.chomp
```

```ruby
*if characters.index(favorite_character)
  puts "That's a valid LoTR character"
else
  puts "That's not a LoTR character"
end
```

---

# .include vs .index

```ruby
characters = %w(aragorn gandalf gimli legolas frodo sam)
```

What is the result?

.left-column[
```ruby
# 1
characters.include?("gandalf")
```

```ruby
# 2
characters.include?("snape")
```

```ruby
# 3
characters.index("gandalf")
```

```ruby
# 4
characters.index("snape")
```
]

--

.right-column[
```ruby
characters.include?("gandalf")
=> true
```

```ruby
characters.include?("snape")
=> false
```

```ruby
characters.index("gandalf")
=> 1
```

```ruby
characters.index("snape")
=> nil
```
]

---

# Use .index when you need to know where

```ruby
characters = %w(aragorn gandalf gimli legolas frodo sam)

i = characters.index("legolas")
if i
  puts "legolas is located at index #{i}"
else
  puts "I don't know where legolas is"
end
```

---

# Random number array

Write a program to create an array of ten randomly generated numbers (between 1
and 100). Then print the values in the array, along with the current index.
Afterwards, print the first and last values again.

The output should look like

```ruby
brooks@ada:~$ ruby numbers.rb
numbers[0] = 71
numbers[1] = 5
numbers[2] = 72
numbers[3] = 65
numbers[4] = 83
numbers[5] = 57
numbers[6] = 73
numbers[7] = 17
numbers[8] = 17
numbers[9] = 46
The first number was 71
The last number was 46
```

---

# Random number array, approach #1
```ruby
numbers = []
10.times do
  # numbers.push(rand(1...100))
  numbers << rand(1...100)
end

numbers.count.times do |i|
  puts "numbers[#{i}] = #{numbers[i]}"
end

puts "The first number was #{numbers[0]}"
puts "The last number was #{numbers[-1]}"
```

```ruby
brooks@ada:~$ ruby numbers.rb
numbers[0] = 71
numbers[1] = 5
numbers[2] = 72
numbers[3] = 65
numbers[4] = 83
numbers[5] = 57
numbers[6] = 73
numbers[7] = 17
numbers[8] = 17
numbers[9] = 46
The first number was 71
The last number was 46
```

---

# Random number array, approach #2
```ruby
numbers = Array.new(10) do
  rand(1...100)
end

numbers.each_with_index do |number, i|
  puts "numbers[#{i}] = #{number}"
end

puts "The first number was #{numbers[0]}"
puts "The last number was #{numbers[-1]}"
```

```ruby
brooks@ada:~$ ruby numbers.rb
numbers[0] = 71
numbers[1] = 5
numbers[2] = 72
numbers[3] = 65
numbers[4] = 83
numbers[5] = 57
numbers[6] = 73
numbers[7] = 17
numbers[8] = 17
numbers[9] = 46
The first number was 71
The last number was 46
```

---

# Random number array, approach #3
```ruby
numbers = Array.new(10) { rand(1...100) }

numbers.each_with_index do |number, i|
  puts "numbers[#{i}] = #{number}"
end

puts "The first number was #{numbers.first}"
puts "The last number was #{numbers.last}"
```

```ruby
brooks@ada:~$ ruby numbers.rb
numbers[0] = 71
numbers[1] = 5
numbers[2] = 72
numbers[3] = 65
numbers[4] = 83
numbers[5] = 57
numbers[6] = 73
numbers[7] = 17
numbers[8] = 17
numbers[9] = 46
The first number was 71
The last number was 46
```

---

# Hashes vs arrays

Arrays - a way to store values sequentially
```ruby
my_array = ["unicycle", "bicycle", "tricycle", "car"]
```

Hashes - a way to store values by name (key)
```ruby
my_hash = {
  one: "unicycle",
  :two => "bicycle",
  "three" => "tricycle",
  4 => "car",
  4.5 => "???",
}
```

```ruby
{:one=>"unicycle", :two=>"bicycle", "three"=>"tricycle", 4=>"car", 4.5=>"???"}
```

--

* With arrays, reference values by index
* With hashes, reference values by key
* Almost anything can be the key to a hash. Strings, symbols, Integers, Floats,
  even other arrays or hashes.

---

# Hashes - what will be printed?
```ruby
my_hash = {
  one: "unicycle",
  :two => "bicycle",
  "three" => "tricycle",
}

puts my_hash
puts my_hash[:one]
puts my_hash[:three]
my_hash[:three] = "tricycle symbol"
puts my_hash[:three]
```

--

```ruby
brooks@ada:~$ ruby hashes.rb
{:one=>"unicycle", :two=>"bicycle", "three"=>"tricycle"}
unicycle

tricycle symbol
```

???

The blank line in output represents `nil`

---

# Hashes

Hashes are unordered, which means the values within them are not guaranteed to
be sequential.

You can loop the keys, values, or both, but the order isn't guaranteed to be
the same as when the hash was created.

```ruby
my_hash.each_key do |key|
  puts key
end
```

```ruby
my_hash.each_value do |value|
  puts value
end
```

```ruby
my_hash.each do |key, value|
  puts "key=#{key}, value=#{value}"
end
```

---

# Time to work on JumpStart Live Day 6 work
Day 6 exercise:
https://github.com/Ada-Developers-Academy/jump-start-live/tree/master/lessons/day6#exercise

Feedback form: https://bit.ly/2LVyEef
