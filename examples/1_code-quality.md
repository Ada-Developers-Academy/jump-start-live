# Code Quality

One important thing to us as programmers is to be able to read the code that we have written. We use code standards and _style guides_ to ensure that everyone is using the same approach when writing their code.

**Code Style** has to do with how easy the code is to _read_ rather than what the code _does_.

Let's see some examples!

#### Example #1
##### A
```ruby
(1..10).times do |i|
puts i
end
```

##### B
```ruby
(1..10).times do |i|
  puts i
end
```

- What is the difference between **A** and **B**?
- Why do you think the `puts` line is indented in **B**?

#### Example #2
##### A
```ruby
animal = gets.chomp
if animal == "Fish"
puts "Wonderful in the Water!"
elsif animal == "Camel"
puts "Destination Desert!"
else
puts "Worldwide Wonder!"
end
```

##### B
```ruby
animal = gets.chomp

if animal == "Fish"
  puts "Wonderful in the Water!"
elsif animal == "Camel"
  puts "Destination Desert!"
else
  puts "Worldwide Wonder!"
end
```

- What is the difference between **A** and **B**?
- Why do you think there is a blank line after the `gets.chomp` in **B**?
- Why do you think the `puts` line is indented in **B**?

#### Example #3
##### A
```ruby
total = 0
(1..10).times do |i|
total += i
end
if total > 10
puts "More than ten"
else
puts "Less than ten"
end
```

##### B
```ruby
total = 0
(1..10).times do |i|
  total += i
end

if total > 10
  puts "More than ten"
else
  puts "Less than ten"
end
```

- What lines in **B** are _indented_? Why?
- What lines in **B** are _whitespace_? Why?

#### Your Turn
How would you modify the code below to improve the code style and readability?
```ruby
foods = ["shrimp", "cauliflower", "salmon", "garlic", "oysters", "salami", "tomatoes", "okra", "zucchini", "avocado"]
print "\nHow many foods would you like to see? I suggest 10, but it's up to you. "
items = gets.chomp.to_i
if items > 10
puts "Best I can do is 10. Let's do 10."
items = 10
elsif items >= 1 && items <= 10
puts "Ok! Let's do " + items + "."
else
puts "We'll just pretend you said 10."
items = 10
end
puts "...Your Fancy Random Menu..."
items.times do |i|
rand_food = foods[rand(0...(foods.length))]
puts i.to_s + ": " + rand_food
end
```
